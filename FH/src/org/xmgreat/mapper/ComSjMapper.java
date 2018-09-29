package org.xmgreat.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.ActivityEntity;
import org.xmgreat.entity.ComboEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.FigureEntity;
import org.xmgreat.entity.HobbyEntity;
import org.xmgreat.entity.LifeEntity;
import org.xmgreat.entity.MarriedEntity;
import org.xmgreat.entity.MateEntity;
import org.xmgreat.entity.RmCdEntity;
import org.xmgreat.entity.RuleEntity;
import org.xmgreat.entity.SalaryEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.WorkEntity;

/*
 * 作者：沈杰
 * 用途：处理套餐管理业务
 */
@Repository
public interface ComSjMapper
{
  /** 展示活动界面，获取线下活动信息 */
  public List<ActivityEntity> getActivityEntity(ConditionEntity con);

  public ActivityEntity getAct(@Param("activityId") Integer activityId);

  /** 展示活动界面，并且提供修改 */
  public void updateAct(ActivityEntity activityEntity);

  /** 展示活动界面，不带分页,带搜索条件获取获取活动总条数 */
  public List<ActivityEntity> getActivityCount(ConditionEntity conditionEntity);

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

  /** 人气排行榜获取用户List根据性别各取前十位 **/
  public List<UserEntity> getUserList(ConditionEntity conditionEntity);

  /** 通过id获取城市名称 */
  public String getCityName(@Param("cityId") Integer cityId);

  /** 获取用户的邮件数 */
  public Integer getEmail(@Param("userId") Integer userId);

  /** 获取用户的访问量 */
  public Integer getVisit(@Param("userId") Integer userId);

  /** 获取用户的每天推荐数 */
  public Integer getRem(@Param("userId") Integer userId);

  /*** 更新用户评分 */
  public void updateBanking(UserEntity userEntity);

  /** 获取所有用户 **/
  public List<UserEntity> getAllUserList();

  /** 获取门户访问量 */
  public Integer getWebsite();

  /** 更新门户访问量 */
  public void updateWebSite(@Param("visitCount") Integer visitCount);

  /** 获取用户的择偶要求 **/
  public UserEntity getUser(@Param("userId") Integer userId);

  /** 获取用户的择偶要求 **/
  public MateEntity getMateEntity(@Param("userId") Integer userId);

  /** 获取用户的外貌体型 **/
  public FigureEntity getFigureEntity(@Param("userId") Integer userId);

  /** 获取用户的生活方式 **/
  public LifeEntity getLifeEntity(@Param("userId") Integer userId);

  /** 获取用户的工作学习 **/
  public WorkEntity getWorkEntity(@Param("userId") Integer userId);

  /** 获取用户的经济实力 **/
  public SalaryEntity getSalaryEntity(@Param("userId") Integer userId);

  /** 获取用户的婚姻观念 **/
  public MarriedEntity getMarriedEntity(@Param("userId") Integer userId);

  /** 获取用户的兴趣爱好 **/
  public HobbyEntity getHobbyEntity(@Param("userId") Integer userId);

  /** 获取符合详细资料的所有用户 **/
  public List<UserEntity> getAllList(RmCdEntity rmCdEntity);

  /** 获取智能推荐的SQL语句 */
  public RuleEntity getRuleEntity(@Param("ruleId") Integer ruleId);

  /** 获取曾经聊天过的用户 **/
  public List<UserEntity> getChatList(UserEntity userEntity);

  /** 获取曾经发送过邮件 **/
  public List<UserEntity> getEamilList(UserEntity userEntity);

  /** 获取曾经访问过的用户 **/
  public List<UserEntity> getVisitList(UserEntity userEntity);

  /** 规则修改 */
  public void alertRule(RuleEntity ruleEntity);

}
