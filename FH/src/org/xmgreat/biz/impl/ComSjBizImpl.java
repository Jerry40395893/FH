package org.xmgreat.biz.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.xmgreat.biz.ComSjBiz;
import org.xmgreat.entity.ComboEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.mapper.ComSjMapper;

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

}
