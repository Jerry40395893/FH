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
  private Integer toUserId;
  private Integer deleteId;
  private String time;
  private UserEntity userEntity;
  private PhotoEntity photoEntity;

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
  

  /**
   * @param deleteId
   *          the deleteId to set
   */
  public void setDeleteId(Integer deleteId)
  {
    this.deleteId = deleteId;
  }

  public Integer getToUserId()
{
	return toUserId;
}

public void setToUserId(Integer toUserId)
{
	this.toUserId = toUserId;
}

public FocusEntity(Integer focusId, Integer userId, Integer toUserId,
    Integer deleteId, String time,UserEntity userEntity,PhotoEntity photoEntity)
  {
    super();
    this.focusId = focusId;
    this.userId = userId;
    this.toUserId = toUserId;
    this.deleteId = deleteId;
    this.time = time;
    this.userEntity=userEntity;
    this.photoEntity=photoEntity;		
  }



public UserEntity getUserEntity()
{
	return userEntity;
}

public void setUserEntity(UserEntity userEntity)
{
	this.userEntity = userEntity;
}

public PhotoEntity getPhotoEntity()
{
	return photoEntity;
}

public void setPhotoEntity(PhotoEntity photoEntity)
{
	this.photoEntity = photoEntity;
}

}
