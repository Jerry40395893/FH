package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * ActivityEntity 实体类 活动表 Wed Sep 19 15:36:43 CST 2018 沈杰
 */
@Component
public class ActivityEntity
{
  private Integer activityId;
  private Integer count;
  private String time;
  private String position;
  private String msg;
  private Integer fare;
  private String title;
  private Integer stage;
  private String photoUrl;
  private String overTime;

  public ActivityEntity()
  {
    super();
  }

  public ActivityEntity(Integer activityId, Integer count, String time,
    String position, String msg, Integer fare, String title, Integer stage,
    String photoUrl, String overTime)
  {
    super();
    this.activityId = activityId;
    this.count = count;
    this.time = time;
    this.position = position;
    this.msg = msg;
    this.fare = fare;
    this.title = title;
    this.stage = stage;
    this.photoUrl = photoUrl;
    this.overTime = overTime;
  }

  public void setCount(Integer count)
  {
    this.count = count;
  }

  public Integer getCount()
  {
    return count;
  }

  public void setTime(String time)
  {
    this.time = time;
  }

  public String getTime()
  {
    return time;
  }

  public void setPosition(String position)
  {
    this.position = position;
  }

  public String getPosition()
  {
    return position;
  }

  public void setMsg(String msg)
  {
    this.msg = msg;
  }

  public String getMsg()
  {
    return msg;
  }

  public void setFare(Integer fare)
  {
    this.fare = fare;
  }

  public Integer getFare()
  {
    return fare;
  }

  public void setTitle(String title)
  {
    this.title = title;
  }

  public String getTitle()
  {
    return title;
  }

  public void setStage(Integer stage)
  {
    this.stage = stage;
  }

  public Integer getStage()
  {
    return stage;
  }

  /**
   * @return the activityId
   */
  public Integer getActivityId()
  {
    return activityId;
  }

  /**
   * @return the photoUrl
   */
  public String getPhotoUrl()
  {
    return photoUrl;
  }

  /**
   * @return the overTime
   */
  public String getOverTime()
  {
    return overTime;
  }

  /**
   * @param activityId
   *          the activityId to set
   */
  public void setActivityId(Integer activityId)
  {
    this.activityId = activityId;
  }

  /**
   * @param photoUrl
   *          the photoUrl to set
   */
  public void setPhotoUrl(String photoUrl)
  {
    this.photoUrl = photoUrl;
  }

  /**
   * @param overTime
   *          the overTime to set
   */
  public void setOverTime(String overTime)
  {
    this.overTime = overTime;
  }

}
