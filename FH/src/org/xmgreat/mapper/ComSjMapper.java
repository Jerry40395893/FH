package org.xmgreat.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.ComboEntity;
import org.xmgreat.entity.ConditionEntity;

/*
 * 作者：沈杰
 * 用途：处理套餐管理业务
 */
@Repository
public interface ComSjMapper
{
  /** 展示套餐界面，获取套餐信息 */
  public List<ComboEntity> geComboEntity(ConditionEntity conditionEntity);

  /** 展示套餐界面，不带分页,带搜索条件获取获取套餐总条数 */
  public List<ComboEntity> geComboCount(ConditionEntity conditionEntity);
}
