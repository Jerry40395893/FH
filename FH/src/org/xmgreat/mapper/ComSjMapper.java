package org.xmgreat.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
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
  public List<ComboEntity> getComboEntity(ConditionEntity conditionEntity);

  /** 展示套餐界面，不带分页,带搜索条件获取获取套餐总条数 */
  public List<ComboEntity> getComboCount(ConditionEntity conditionEntity);

  /** 通过参数类似获取参数表doctorTb中的记录条数,将参数装到条件类中使用 */
  public ConditionEntity getNum(@Param("styleName") Integer styleName);

  /** 通过套餐Id逻辑删除套餐 */
  public void update(@Param("comboId") Integer comboId);

  /** 通过套餐修改 */
  public void updateCom(ComboEntity comboEntity);

  /** 通过套餐Id获取套餐信息套餐 */
  public ComboEntity getCom(@Param("comboId") Integer comboId);

  /** 新增套餐 */
  public void add(ComboEntity comboEntity);

  /** 通过套餐名称获取套餐信息套餐 */
  public ComboEntity getCombo(@Param("name") String name);

}
