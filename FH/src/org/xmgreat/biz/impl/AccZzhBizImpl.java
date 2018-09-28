package org.xmgreat.biz.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.xmgreat.biz.AccZzhBiz;
import org.xmgreat.biz.AdminZzhBiz;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.WeathEntity;
import org.xmgreat.mapper.AccZzhMapper;
import org.xmgreat.mapper.AdminZzhMapper;

@Service
public class AccZzhBizImpl implements AccZzhBiz
{
  @Resource
  private AccZzhMapper accZzhMapper;
 
  /** 会员管理获取分页list **/
  private List<WeathEntity> accList;
  /** 会员管理获取总的list **/
  private List<WeathEntity> accCountList;
  /**账户余额**/
  private List<WeathEntity> balaList;
  /** 记录总页数 **/
  private List<Integer> list = new ArrayList<Integer>();
  /** 为了biz层能够将数据展示在前端jsp页面 */
  private HttpServletRequest request;
  /** 分页选择里面的页数 */
  private Integer listSize;
  /** 最大记录数 */
  private Integer sumCount;
  /** 当前页数 */
  private Integer currentPage;

  /*
   * 用户账单列表展示 2018/09/22 12：57 作者： 张增辉
   */
  @Override
  public List<WeathEntity> selecAcc(ConditionEntity conditionEntity)
  {
    request = ((ServletRequestAttributes) RequestContextHolder
      .getRequestAttributes()).getRequest();

    accList = accZzhMapper.selecAcc(conditionEntity);
    accCountList = accZzhMapper.getAccCount(conditionEntity);
    /** 判断并计算总页数 */
    listSize = accCountList.size() / 5
      + ((accCountList.size() % 5) > 0 ? 1 : 0);
    /** 清除之前遗留的数据 */
    list.clear();
    for (int i = 0; i < listSize; i++)
    {
      list.add(i);
    }
    currentPage=1;
    //currentPage = conditionEntity.getCurrentPage();
    if (currentPage <= 0)
    {
      System.out.println("打印" + currentPage);
      currentPage = 1;
      conditionEntity.setCurrentPage(currentPage);
    } else
    {
    	accList = accZzhMapper.selecAcc(conditionEntity);
      if (accList.size() == 0)
      {
        currentPage = currentPage - 1;
        conditionEntity.setCurrentPage(currentPage);
      }
    }
    accList = accZzhMapper.selecAcc(conditionEntity);

    sumCount = accCountList.size();
    request.setAttribute("currentPage", currentPage);
    request.setAttribute("sumCount", sumCount);
    request.setAttribute("userList", accList);
    request.setAttribute("list", list);
    /** 每次过去带模糊搜索的条件回去，分页的时候在带回来 */
    request.setAttribute("styleId",  conditionEntity.getStyleId());
    request.setAttribute("hapTimeS", conditionEntity.getHapTimeS());
    request.setAttribute("hapTimeE", conditionEntity.getHapTimeE());
    
    return accList;
  }

@Override
public List<WeathEntity> selecBala(ConditionEntity conditionEntity) {
	request = ((ServletRequestAttributes) RequestContextHolder
		      .getRequestAttributes()).getRequest();
	balaList=accZzhMapper.selecBal(conditionEntity);
	request.setAttribute("balalist", balaList);
	return null;
}

	

}
