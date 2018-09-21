package org.xmgreat.biz.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;
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
  private Integer listSize;
  /** 最大记录数 */
  private Integer sumCount;
  /** 当前页数 */
  private Integer currentPage;

  @Override
  public List<ComboEntity> geComboEntity(ConditionEntity conditionEntity)
  {
    request = conditionEntity.getRequest();
    comList = comSjMapper.geComboEntity(conditionEntity);
    counList = comSjMapper.geComboCount(conditionEntity);

    /** 判断并计算总页数 */
    if ((counList.size() % 2) == 0)
    {
      listSize = (counList.size() / 2);
    } else
    {
      listSize = (counList.size() / 2) + 1;
    }

    for (int i = 0; i < listSize; i++)
    {
      list.add(i);
    }
    currentPage = conditionEntity.getCurrentPage();

    if (currentPage == null)
    {
      currentPage = 1;
    }
    sumCount = counList.size();
    request.setAttribute("currentPage", currentPage);
    request.setAttribute("sumCount", sumCount);
    request.setAttribute("comList", comList);
    request.setAttribute("list", list);

    return comList;
  }

}
