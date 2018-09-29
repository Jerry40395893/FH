package org.xmgreat.biz;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.xmgreat.entity.ActivityEntity;
import org.xmgreat.entity.ComboEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.RuleEntity;
import org.xmgreat.entity.UserEntity;

/*
 * 作者：沈杰
 * 用途：处理套餐管理业务
 */
public interface ComSjBiz
{
  /** 展示活动界面，获取线下活动信息 */
  public List<ActivityEntity> getActivityEntity(ConditionEntity con);

  /** 进入修改界面 */
  public void getAct(@Param("activityId") Integer activityId);

  /** 提交活动修改 */
  public void updateAct(ActivityEntity activityEntity);

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

  /** 更新门口访问量 */
  public void updateWebsite();

  /** 获取智能推荐的所有用户 **/
  public List<UserEntity> getRecomList(@Param("userId") Integer userId);

  /** 展示智能推荐规则管理信息 */
  public void getRuleEntity();

  /** 规则修改 */
  public void alertRule(RuleEntity ruleEntity);

}
