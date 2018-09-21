package org.xmgreat.biz;

import java.util.List;
import org.xmgreat.entity.ComboEntity;
import org.xmgreat.entity.ConditionEntity;

/*
 * 作者：沈杰
 * 用途：处理套餐管理业务
 */
public interface ComSjBiz
{
  /** 展示套餐界面，获取套餐信息 */
  public List<ComboEntity> geComboEntity(ConditionEntity conditionEntity);

}
