package org.xmgreat.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.WeathEntity;

@Repository
public interface AccZzhMapper
{
	public List<WeathEntity> selecAcc(ConditionEntity conditionEntity);// 得到账单列表

	public List<WeathEntity> getAccCount(ConditionEntity conditionEntity);// 得到账单详情个数

    public List<WeathEntity> selecBal(ConditionEntity conditionEntity);// 会员的账户余额

}
