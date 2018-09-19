package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * EmailEntity 实体类 Wed Sep 19 16:11:21 CST 2018 沈杰---用户邮件表
 */

@Component
public class EmailEntity
{
  private Integer emailId;
  private Integer userId;
  private String emailName;
  private String msg;
  private Integer touserId;
  private String time;
  private Integer stage;
  private String deleteTime;
  private Integer deleteId;

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

  public EmailEntity()
  {
    super();
  }

  public EmailEntity(Integer emailId, Integer userId, String emailName,
    String msg, Integer touserId, String time, Integer stage, String deleteTime,
    Integer deleteId)
  {
    super();
    this.emailId = emailId;
    this.userId = userId;
    this.emailName = emailName;
    this.msg = msg;
    this.touserId = touserId;
    this.time = time;
    this.stage = stage;
    this.deleteTime = deleteTime;
    this.deleteId = deleteId;
  }

  /**
   * @return the emailId
   */
  public Integer getEmailId()
  {
    return emailId;
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
   * @return the touserId
   */
  public Integer getTouserId()
  {
    return touserId;
  }

  /**
   * @return the deleteTime
   */
  public String getDeleteTime()
  {
    return deleteTime;
  }

  /**
   * @return the deleteId
   */
  public Integer getDeleteId()
  {
    return deleteId;
  }

  /**
   * @param emailId
   *          the emailId to set
   */
  public void setEmailId(Integer emailId)
  {
    this.emailId = emailId;
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
   * @param touserId
   *          the touserId to set
   */
  public void setTouserId(Integer touserId)
  {
    this.touserId = touserId;
  }

  /**
   * @param deleteTime
   *          the deleteTime to set
   */
  public void setDeleteTime(String deleteTime)
  {
    this.deleteTime = deleteTime;
  }

  /**
   * @param deleteId
   *          the deleteId to set
   */
  public void setDeleteId(Integer deleteId)
  {
    this.deleteId = deleteId;
  }

}
