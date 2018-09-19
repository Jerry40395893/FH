package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * PhotoEntity 实体类 Wed Sep 19 17:00:45 CST 2018 沈杰---照片表
 */

@Component
public class PhotoEntity
{
  private Integer photoId;
  private Integer userId;
  private String URL;
  private Integer parameter;
  private String upTime;

  public void setParameter(Integer parameter)
  {
    this.parameter = parameter;
  }

  public Integer getParameter()
  {
    return parameter;
  }

  public PhotoEntity()
  {
    super();
  }

  /**
   * @return the photoId
   */
  public Integer getPhotoId()
  {
    return photoId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the uRL
   */
  public String getURL()
  {
    return URL;
  }

  /**
   * @return the upTime
   */
  public String getUpTime()
  {
    return upTime;
  }

  /**
   * @param photoId
   *          the photoId to set
   */
  public void setPhotoId(Integer photoId)
  {
    this.photoId = photoId;
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
   * @param uRL
   *          the uRL to set
   */
  public void setURL(String uRL)
  {
    URL = uRL;
  }

  /**
   * @param upTime
   *          the upTime to set
   */
  public void setUpTime(String upTime)
  {
    this.upTime = upTime;
  }

  public PhotoEntity(Integer photoId, Integer userId, String uRL,
    Integer parameter, String upTime)
  {
    super();
    this.photoId = photoId;
    this.userId = userId;
    URL = uRL;
    this.parameter = parameter;
    this.upTime = upTime;
  }

}
