package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * VisitEntity 实体类 Wed Sep 19 18:49:00 CST 2018 沈杰---前台用户访问表
 */

@Component
public class VisitEntity
{
  private Integer visitId;
  private Integer userId;
  private Integer touserId;
  private String time;
  private Integer style;

  public void setTime(String time)
  {
    this.time = time;
  }

  public String getTime()
  {
    return time;
  }

  public void setStyle(Integer style)
  {
    this.style = style;
  }

  public Integer getStyle()
  {
    return style;
  }

  public VisitEntity()
  {
    super();
  }

  public VisitEntity(Integer visitId, Integer userId, Integer touserId,
    String time, Integer style)
  {
    super();
    this.visitId = visitId;
    this.userId = userId;
    this.touserId = touserId;
    this.time = time;
    this.style = style;
  }

  /**
   * @return the visitId
   */
  public Integer getVisitId()
  {
    return visitId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the touserId
   */
  public Integer getTouserId()
  {
    return touserId;
  }

  /**
   * @param visitId
   *          the visitId to set
   */
  public void setVisitId(Integer visitId)
  {
    this.visitId = visitId;
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
   * @param touserId
   *          the touserId to set
   */
  public void setTouserId(Integer touserId)
  {
    this.touserId = touserId;
  }

}
