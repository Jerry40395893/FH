package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * FocusEntity 实体类 Wed Sep 19 16:36:55 CST 2018 沈杰---我的关注表
 */

@Component
public class FocusEntity
{
  private Integer focusId;
  private Integer userId;
  private Integer touserId;
  private Integer deleteId;
  private String time;

  public void setTime(String time)
  {
    this.time = time;
  }

  public String getTime()
  {
    return time;
  }

  public FocusEntity()
  {
    super();
  }

  /**
   * @return the focusId
   */
  public Integer getFocusId()
  {
    return focusId;
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
   * @return the deleteId
   */
  public Integer getDeleteId()
  {
    return deleteId;
  }

  /**
   * @param focusId
   *          the focusId to set
   */
  public void setFocusId(Integer focusId)
  {
    this.focusId = focusId;
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

  /**
   * @param deleteId
   *          the deleteId to set
   */
  public void setDeleteId(Integer deleteId)
  {
    this.deleteId = deleteId;
  }

  public FocusEntity(Integer focusId, Integer userId, Integer touserId,
    Integer deleteId, String time)
  {
    super();
    this.focusId = focusId;
    this.userId = userId;
    this.touserId = touserId;
    this.deleteId = deleteId;
    this.time = time;
  }

}
