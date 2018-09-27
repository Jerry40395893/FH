package org.xmgreat.biz;

import java.util.List;

import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.WeathEntity;

public interface AccZzhBiz
{

 
  public List<WeathEntity> selecAcc(ConditionEntity conditionEntity);// 用户账单表显示。

  public List<WeathEntity> selecBala(ConditionEntity conditionEntity);//查询余额
}
