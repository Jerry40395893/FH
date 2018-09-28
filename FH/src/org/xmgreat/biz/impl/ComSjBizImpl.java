package org.xmgreat.biz.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.xmgreat.biz.ComSjBiz;
import org.xmgreat.entity.ComboEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MateEntity;
import org.xmgreat.entity.RmCdEntity;
import org.xmgreat.entity.RuleEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.mapper.ComSjMapper;
import org.xmgreat.tools.ChangeAge;
import org.xmgreat.tools.DateUtils;

/*
 * 作者：沈杰
 * 用途：处理套餐管理业务
 */
@Service
public class ComSjBizImpl implements ComSjBiz
{
  @Resource
  private ComSjMapper comSjMapper;
  /** 记录不带分页条件的总记录数 */
  private List<ComboEntity> counList;
  /** 记录带分页条件的总记录数 */
  private List<ComboEntity> comList;
  /** 记录总页数 */
  private List<Integer> list = new ArrayList<Integer>();
  /** 为了biz层能够将数据展示在前端jsp页面 */
  private HttpServletRequest request;
  /** 分页选择里面的页数 */
  private int listSize;
  /** 最大记录数 */
  private Integer sumCount;
  /** 当前页数 */
  private Integer currentPage;
  /** 每页记录条数 */
  private Integer baseNum;
  /** 条件分页参数，大于当前页数 */
  private Integer forNum;
  /** 条件分页参数，小于当前页数 */
  private Integer toNum;
  /** 跳页类型 ,1代表第一页，2代表上一页，3代表下一页，4代表末页，5代表跳页 */
  private Integer turnPage;

  /** 因为样式的原因，前端页面模糊搜索的时候名字会多出一个， */
  private String comName;

  /** 获取智能推荐的用户 */
  @Override
  public List<UserEntity> getRecomList(Integer userId)
  {
    userId = 1;
    /** 总的用户列表 */
    List<UserEntity> recomList = new ArrayList<UserEntity>();
    /** 用来临时转换的用户 */
    UserEntity userEntity = null;

    /** 获取该用户每天可以享受的推荐人数 */
    int recommend = 0;
    /** 没有购买套餐的人，套餐推荐查询出来的是null。所以需要进行转换 */
    Object object = null;
    object = comSjMapper.getRem(userId);
    if (object != null)
    {
      recommend = (Integer) object;
    }
    if (recommend <= 100)
    {
      recommend = 100;
    }

    MateEntity mateEntity = comSjMapper.getMateEntity(userId);
    /** 如果有填写择偶条件 */
    if (mateEntity != null)
    {
      /** 性别要处理过 */
      userEntity = comSjMapper.getUser(userId);
      mateEntity.setRecommend(recommend);
      if (userEntity.getSex().equals("女"))
      {
        mateEntity.setSex("男");
      } else
      {
        mateEntity.setSex("女");
      }
      /**
       * 符合择偶要求的人数不够的时候需要，查询符合详细资料内的用户,取出来的SQL没有userId需要重新添加条件，性别也需要取相反的，
       * 然后用户在晒幸福中也不能找到记录
       */
      /** 获取所有详细资料的信息 */
      RmCdEntity rmCdEntity = new RmCdEntity();

      /** 匹配的时候选择最近三个月有登录的用户 */
      List lDate = DateUtils.getMouthStartAndEnd(-2);
      mateEntity.setMonth((String) lDate.get(0));
      rmCdEntity.setMateEntity(mateEntity);
      /** 核心，根据规则里面的属性状态，分别进行不同程度的匹配 */
      RuleEntity ruleEntity = comSjMapper.getRuleEntity(2);
      rmCdEntity.setRuleEntity(ruleEntity);
      recomList = comSjMapper.getAllList(rmCdEntity);
      /**
       * 若果按照详细资料查找到的数量不够，那么久需要执行第三种情况，跟着增加聊天过的getChatList，发过邮件的getEamilList，
       * 访问过的getVisitList进行参考匹配在这种情况就需要一个装userList的中间表
       */
      if (recomList.size() < recommend)
      {/** 临时用户列表，用来接收三次查询返回值 */
        List<UserEntity> list = new ArrayList<UserEntity>();
        userEntity = new UserEntity();
        /** 匹配的时候选择最近三个月有登录的用户 */
        userEntity.setLgTime((String) lDate.get(0));
        userEntity.setUserId(userId);
        /** 根据获取到的聊天记录里面的择偶条件等7个条件再次查询 */
        List<UserEntity> getVisitList = comSjMapper.getChatList(userEntity);
        recomList = getRemainList(recomList, ruleEntity, getVisitList, lDate,
          recommend);
        if (recomList.size() < recommend)
        {
          /** 根据获取到的聊天记录里面的择偶条件等7个条件再次查询 */
          getVisitList = comSjMapper.getEamilList(userEntity);
          recomList = getRemainList(recomList, ruleEntity, getVisitList, lDate,
            recommend);

          if (recomList.size() < recommend)
          {
            /** 根据获取到的聊天记录里面的择偶条件等7个条件再次查询 */
            getVisitList = comSjMapper.getVisitList(userEntity);
            recomList = getRemainList(recomList, ruleEntity, getVisitList,
              lDate, recommend);
          }
        }
      }

    } else
    {
      /** 还有中情况就是只是单纯注册，然后什么信息都没有填写的，那么需要用欢迎度来推送 */
      ConditionEntity conditionEntity = new ConditionEntity();
      userEntity = comSjMapper.getUser(userId);
      if (userEntity.getSex().equals("女"))
      {
        conditionEntity.setSex("男");
      } else
      {
        conditionEntity.setSex("女");
      }

      conditionEntity.setCurrentPage(recommend);
      recomList = comSjMapper.getUserList(conditionEntity);
    }
    HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
      .getRequestAttributes()).getRequest();

    /** 获取到的所有用户需要转换年龄,用于默认展示的6条数据 */
    List<UserEntity> userList = new ArrayList<UserEntity>();
    for (int i = 0; i < recomList.size(); i++)
    {
      userEntity = recomList.get(i);
      String cityName = comSjMapper.getCityName(userEntity.getCityId());
      userEntity.setCityName(cityName);
      String height = userEntity.getHeight();
      userEntity.setHeight(height);

      /** 将出生日期转换成年龄 */
      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      Date bithday;
      try
      {
        bithday = format.parse(userEntity.getBrithday());
        userEntity.setStrAge(ChangeAge.getAgeByBirth(bithday) + "岁");
      } catch (ParseException e)
      {
        e.printStackTrace();
      }

      userList.add(userEntity);
    }

    /** 因为涉及到append，所有"\"的转义字符没法识别需要进行转换。用于展示所有数据 */
    List<UserEntity> allList = new ArrayList<UserEntity>();
    for (int i = 0; i < recomList.size(); i++)
    {
      userEntity = recomList.get(i);
      String objPath = userEntity.getHeadPortrait();
      if (objPath != null)
      {
        String[] path = userEntity.getHeadPortrait().split("\\\\");
        String head = "";
        for (int j = 0; j < path.length - 1; j++)
        {
          head += path[j] + "%2F";
        }
        userEntity.setHeadPortrait(head + path[path.length - 1]);
      }

      allList.add(userEntity);
    }
    request.setAttribute("recomList", userList);
    request.setAttribute("allList", allList);

    return null;
  }

  /** 每天定时更新用户推荐评分 */
  @Override
  public void updateBanking()
  {
    ApplicationContext app = new ClassPathXmlApplicationContext(
      "applicationContext.xml");
    comSjMapper = (ComSjMapper) app.getBean("comSjMapper");
    List<UserEntity> mList = comSjMapper.getAllUserList();
    for (int i = 0; i < mList.size(); i++)
    {
      UserEntity userEntity = mList.get(i);
      int userId = userEntity.getUserId();
      int email = comSjMapper.getEmail(userId);
      int visit = comSjMapper.getVisit(userId);
      int remend = comSjMapper.getRem(userId);
      int popular = (int) (((email * 2) + (visit * 1.5) + remend) / 4.5);
      userEntity.setPopular(popular);
      comSjMapper.updateBanking(userEntity);
    }
  }

  /*
   * 添加套餐的时候名字查重
   */
  @Override
  public List<UserEntity> getUserList(String sex)
  {
    HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
      .getRequestAttributes()).getRequest();
    ConditionEntity conditionEntity = new ConditionEntity();
    conditionEntity.setSex("男");
    conditionEntity.setCurrentPage(10);
    List<UserEntity> mList = comSjMapper.getUserList(conditionEntity);
    conditionEntity.setSex("女");
    List<UserEntity> woList = comSjMapper.getUserList(conditionEntity);
    List<UserEntity> manList = new ArrayList<>();
    List<UserEntity> womenList = new ArrayList<>();
    String height = null;
    /** 获取到的用户在获取城市名称 ，将生日换算成年龄 */
    for (int i = 0; i < mList.size(); i++)
    {
      UserEntity userEntity = mList.get(i);

      String cityName = comSjMapper.getCityName(userEntity.getCityId());
      userEntity.setCityName(cityName);
      height = userEntity.getHeight();
      userEntity.setHeight(height + "cm");
      /** 将出生日期转换成年龄 */
      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      Date bithday;
      try
      {
        bithday = format.parse(userEntity.getBrithday());
        userEntity.setStrAge(ChangeAge.getAgeByBirth(bithday) + "岁");
      } catch (ParseException e)
      {
        e.printStackTrace();
      }
      manList.add(userEntity);

    }
    for (int i = 0; i < woList.size(); i++)
    {
      UserEntity userEntity = woList.get(i);

      String cityName = comSjMapper.getCityName(userEntity.getCityId());
      userEntity.setCityName(cityName);
      height = userEntity.getHeight();
      userEntity.setHeight("身高:" + height + "cm");
      /** 将出生日期转换成年龄 */
      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      Date bithday;
      try
      {
        bithday = format.parse(userEntity.getBrithday());
        userEntity.setStrAge(ChangeAge.getAgeByBirth(bithday) + "岁");
      } catch (ParseException e)
      {
        e.printStackTrace();
      }
      womenList.add(userEntity);
    }
    request.setAttribute("manList", manList);
    request.setAttribute("womenList", womenList);
    return null;
  }

  /*
   * 添加套餐的时候名字查重
   */
  @Override
  public ComboEntity getCombo(String name)
  {

    return comSjMapper.getCombo(name);
  }

  /*
   * 修改单个套餐
   */
  @Override
  public void updateCom(ComboEntity comboEntity)
  {
    comSjMapper.updateCom(comboEntity);

  }

  /*
   * 获取单个套餐信息
   */
  @Override
  public ComboEntity getCom(Integer comboId)
  {
    HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
      .getRequestAttributes()).getRequest();

    ComboEntity comboEntity = comSjMapper.getCom(comboId);
    request.setAttribute("com", comboEntity);
    return comboEntity;
  }

  /*
   * 套餐添加
   */
  @Override
  public void add(ComboEntity comboEntity)
  {
    comSjMapper.add(comboEntity);

  }

  @Override
  public void update(Integer comboId)
  {
    comSjMapper.update(comboId);
  }

  @Override
  public List<ComboEntity> geComboEntity(ConditionEntity conditionEntity)
  {
    request = conditionEntity.getRequest();
    /** 只带模糊搜索的条件，计算总页数 */
    comName = conditionEntity.getComName();
    if (comName != null)
    {
      comName = conditionEntity.getComName().replace(",", "");
      conditionEntity.setComName(comName);
    }

    counList = comSjMapper.getComboCount(conditionEntity);

    if (baseNum != null)
    {
      if (baseNum != 1)
      {
        /** 判断并计算总页数 */
        if ((counList.size() % 2) == 0)
        {
          listSize = (counList.size() / 2);
        } else
        {
          listSize = (counList.size() / 2) + 1;
        }
      } else
      {
        listSize = counList.size();
      }
    } else
    {

      /** 判断并计算总页数 */
      if ((counList.size() % 2) == 0)
      {
        listSize = (counList.size() / 2);
      } else
      {
        listSize = (counList.size() / 2) + 1;
      }

    }

    /** 清除之前遗留的数据 */
    list.clear();
    for (int i = 0; i < listSize; i++)
    {
      list.add(i);
    }
    sumCount = counList.size();
    currentPage = conditionEntity.getCurrentPage();
    turnPage = conditionEntity.getTurnPage();
    if ((currentPage == null) || (turnPage == 1))
    {
      currentPage = 1;
    } else if (turnPage == 2)
    {
      if (currentPage != 1)
      {
        currentPage--;
      }
    } else if (turnPage == 3)
    {
      if (currentPage < listSize)
      {
        currentPage++;
      }
    } else if (turnPage == 4)
    {
      currentPage = listSize;

    }
    if (currentPage == 0)
    {
      currentPage = 1;
    }

    /** 后台每页分页条数，参数类型为5 */
    ConditionEntity con = comSjMapper.getNum(5);
    baseNum = con.getBaseNum();
    forNum = baseNum * (currentPage - 1) + 1;
    toNum = baseNum * currentPage;
    conditionEntity.setForNum(forNum);
    conditionEntity.setToNum(toNum);
    comList = comSjMapper.getComboEntity(conditionEntity);

    request.setAttribute("currentPage", currentPage);
    request.setAttribute("sumCount", sumCount);
    request.setAttribute("comList", comList);
    request.setAttribute("list", list);
    /** 每次过去带模糊搜索的条件回去，分页的时候在带回来 */
    request.setAttribute("comName", conditionEntity.getComName());
    request.setAttribute("price", conditionEntity.getPrice());
    request.setAttribute("time", conditionEntity.getTime());
    return comList;
  }

  @Override
  public void updateWebsite()
  {
    int visitCount = comSjMapper.getWebsite();
    visitCount++;
    comSjMapper.updateWebSite(visitCount);

  }

  /** 根据参考用户的聊天，邮件，访问进行二次查询 */
  public List<UserEntity> getRemainList(List<UserEntity> recomList,
    RuleEntity ruleEntity, List<UserEntity> getVisitList, List lDate,
    Integer recommend)
  {
    UserEntity userEntity = null;
    for (int i = 0; i < getVisitList.size(); i++)
    {
      /** 获取所有详细资料的信息 */
      RmCdEntity rmCdEntity = new RmCdEntity();
      MateEntity mateEntity = new MateEntity();
      mateEntity.setUserId(getVisitList.get(i).getUserId());
      /** 通过获取到的userId,需要查找这个用户的完整信息 */
      userEntity = comSjMapper.getUser(getVisitList.get(i).getUserId());
      if (userEntity.getSex().equals("女"))
      {
        mateEntity.setSex("男");
      } else
      {
        mateEntity.setSex("女");
      }
      /** 匹配的时候选择最近三个月有登录的用户 */
      mateEntity.setMonth((String) lDate.get(0));
      rmCdEntity.setMateEntity(mateEntity);
      /** 核心，根据规则里面的属性状态，分别进行不同程度的匹配 */
      rmCdEntity.setRuleEntity(ruleEntity);
      recomList = comSjMapper.getAllList(rmCdEntity);
    }

    if (recomList.size() + getVisitList.size() < recommend)
    {
      /** 如果查出的数目仍然不够，那就全部往里面添加 */
      for (int i = 0; i < getVisitList.size(); i++)
      {
        userEntity = comSjMapper.getUser(getVisitList.get(i).getUserId());
        /** 添加到推荐列表之前要进行筛选，如果重复就不放进去 */
        for (UserEntity user : recomList)
        {
          if (user.getUserId() == userEntity.getUserId())
          {
            break;
          }
        }
        recomList.add(userEntity);
      }
    } else
    {
      for (int i = 0; i < recommend - recomList.size(); i++)
      {
        userEntity = comSjMapper.getUser(getVisitList.get(i).getUserId());
        recomList.add(userEntity);
      }
    }
    return recomList;
  }
}
