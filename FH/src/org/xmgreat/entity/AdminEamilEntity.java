package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * AdminEamilEntity 实体类 后台右键表 Wed Sep 19 15:41:31 CST 2018 沈杰
 */
@Component
public class AdminEamilEntity
{
  private Integer eamilId;
  private Integer adminId;
  private Integer userId;
  private String emailName;
  private String msg;
  private String time;
  private Integer stage;
  private String deleteTime;
  private Integer style;

  public void setMsg(String msg)
  {
    this.msg = msg;
  }

  public String getMsg()
  {
    return msg;
  }

  public void setTime(String time)
  {
    this.time = time;
  }

  public String getTime()
  {
    return time;
  }

  public void setStage(Integer stage)
  {
    this.stage = stage;
  }

  public Integer getStage()
  {
    return stage;
  }

  public void setStyle(Integer style)
  {
    this.style = style;
  }

  public Integer getStyle()
  {
    return style;
  }

  public AdminEamilEntity()
  {
    super();
  }

  public AdminEamilEntity(Integer eamilId, Integer adminId, Integer userId,
    String emailName, String msg, String time, Integer stage, String deleteTime,
    Integer style)
  {
    super();
    this.eamilId = eamilId;
    this.adminId = adminId;
    this.userId = userId;
    this.emailName = emailName;
    this.msg = msg;
    this.time = time;
    this.stage = stage;
    this.deleteTime = deleteTime;
    this.style = style;
  }

  /**
   * @return the eamilId
   */
  public Integer getEamilId()
  {
    return eamilId;
  }

  /**
   * @return the adminId
   */
  public Integer getAdminId()
  {
    return adminId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the emailName
   */
  public String getEmailName()
  {
    return emailName;
  }

  /**
   * @return the deleteTime
   */
  public String getDeleteTime()
  {
    return deleteTime;
  }

  /**
   * @param eamilId
   *          the eamilId to set
   */
  public void setEamilId(Integer eamilId)
  {
    this.eamilId = eamilId;
  }

  /**
   * @param adminId
   *          the adminId to set
   */
  public void setAdminId(Integer adminId)
  {
    this.adminId = adminId;
  }

  /**
   * @param userId
   *          the userId to set
   */
  public void setUserId(Integer userId)
  {
    this.userId = userId;
  }

  /**
   * @param emailName
   *          the emailName to set
   */
  public void setEmailName(String emailName)
  {
    this.emailName = emailName;
  }

  /**
   * @param deleteTime
   *          the deleteTime to set
   */
  public void setDeleteTime(String deleteTime)
  {
    this.deleteTime = deleteTime;
  }

}
