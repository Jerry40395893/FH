package org.xmgreat.biz;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.xmgreat.entity.ComboEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.UserEntity;

/*
 * 作者：沈杰
 * 用途：处理套餐管理业务
 */
public interface ComSjBiz
{
  /** 展示套餐界面，获取套餐信息 */
  public List<ComboEntity> geComboEntity(ConditionEntity conditionEntity);

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

  /** 人气排行榜获取用户List根据性别各取前十位 **/
  public List<UserEntity> getUserList(@Param("sex") String sex);

  /** 每天24点定时更新用户评分 */
  public void updateBanking();

}
