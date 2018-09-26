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
import org.xmgreat.entity.UserEntity;
import org.xmgreat.mapper.ComSjMapper;
import org.xmgreat.tools.ChangeAge;

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
    /** 临时存放的用户列表 */
    List<UserEntity> list = new ArrayList<UserEntity>();
    /** 用来临时转换的用户 */
    UserEntity userEntity = null;

    /** 获取该用户每天可以享受的推荐人数 */
    int recommend = 0;
    recommend = comSjMapper.getRem(userId);
    if (recommend <= 100)
    {
      recommend = 100;
    }
    MateEntity mateEntity = null;
    mateEntity = comSjMapper.getMateEntity(userId);
    mateEntity.setRecommend(recommend);
    recomList = comSjMapper.getRecomList(mateEntity);
    if (recomList.size() < recommend)
    {
      /**
       * 符合择偶要求的人数不够的时候需要，查询符合详细资料内的用户,取出来的SQL没有userId需要重新添加条件，性别也需要取相反的，
       * 然后用户在晒幸福中也不能找到记录
       */
      userEntity = comSjMapper.getUser(userId);
      String sqlStr = comSjMapper.getSql(2);
      list = comSjMapper.getAllList(sqlStr);
    }

    /** 将临时用户列表的内容取出到总的列表中,要判断全部放进去是否会超标 */
    if ((recomList.size() + list.size()) < recommend)
    {
      for (int i = 0; i < list.size(); i++)
      {
        userEntity = list.get(i);
        recomList.add(userEntity);
      }
      /**
       * 因为二次搜索后还是不够匹配数，所以需要进行第三次搜索
       * 。第三次搜索是通过用户曾经聊天过的chatTb，发送过邮件的emailTb，访问过的visitTb用户进行匹配。按照优先级依次查询
       */

    } else
    {
      for (int i = 0; i < (recommend - recomList.size()); i++)
      {
        userEntity = list.get(i);
        recomList.add(userEntity);
      }
    }

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
    List<UserEntity> mList = comSjMapper.getUserList("男");
    List<UserEntity> woList = comSjMapper.getUserList("女");
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

}
