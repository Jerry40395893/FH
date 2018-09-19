package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * ShowEntity 实体类 Wed Sep 19 18:39:28 CST 2018 沈杰---晒幸福表
 */

@Component
public class ShowEntity
{
  private Integer userId;
  private Integer showId;
  private String photoUrl;
  private String experience;
  private String title;
  private String time;

  public void setExperience(String experience)
  {
    this.experience = experience;
  }

  public String getExperience()
  {
    return experience;
  }

  public void setTitle(String title)
  {
    this.title = title;
  }

  public String getTitle()
  {
    return title;
  }

  public void setTime(String time)
  {
    this.time = time;
  }

  public String getTime()
  {
    return time;
  }

  public ShowEntity()
  {
    super();
  }

  public ShowEntity(Integer userId, Integer showId, String photoUrl,
    String experience, String title, String time)
  {
    super();
    this.userId = userId;
    this.showId = showId;
    this.photoUrl = photoUrl;
    this.experience = experience;
    this.title = title;
    this.time = time;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the showId
   */
  public Integer getShowId()
  {
    return showId;
  }

  /**
   * @return the photoUrl
   */
  public String getPhotoUrl()
  {
    return photoUrl;
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
   * @param showId
   *          the showId to set
   */
  public void setShowId(Integer showId)
  {
    this.showId = showId;
  }

  /**
   * @param photoUrl
   *          the photoUrl to set
   */
  public void setPhotoUrl(String photoUrl)
  {
    this.photoUrl = photoUrl;
  }

}
