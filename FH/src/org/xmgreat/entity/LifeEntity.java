package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * LifeEntity 实体类 Wed Sep 19 16:49:48 CST 2018 沈杰---生活方式表
 */

@Component
public class LifeEntity
{
  private Integer lifeId;
  private Integer userId;
  private String smoke;
  private String drink;
  private String exercise;
  private String dietary;
  private String shopping;
  private String church;
  private String rest;
  private String friend;
  private String maxcost;
  private String homework;
  private String dohomework;
  private String likeLevel;
  private String aboutPet;

  public void setSmoke(String smoke)
  {
    this.smoke = smoke;
  }

  public String getSmoke()
  {
    return smoke;
  }

  public void setDrink(String drink)
  {
    this.drink = drink;
  }

  public String getDrink()
  {
    return drink;
  }

  public void setExercise(String exercise)
  {
    this.exercise = exercise;
  }

  public String getExercise()
  {
    return exercise;
  }

  public void setDietary(String dietary)
  {
    this.dietary = dietary;
  }

  public String getDietary()
  {
    return dietary;
  }

  public void setShopping(String shopping)
  {
    this.shopping = shopping;
  }

  public String getShopping()
  {
    return shopping;
  }

  public void setChurch(String church)
  {
    this.church = church;
  }

  public String getChurch()
  {
    return church;
  }

  public void setRest(String rest)
  {
    this.rest = rest;
  }

  public String getRest()
  {
    return rest;
  }

  public void setFriend(String friend)
  {
    this.friend = friend;
  }

  public String getFriend()
  {
    return friend;
  }

  public void setMaxcost(String maxcost)
  {
    this.maxcost = maxcost;
  }

  public String getMaxcost()
  {
    return maxcost;
  }

  public void setHomework(String homework)
  {
    this.homework = homework;
  }

  public String getHomework()
  {
    return homework;
  }

  public void setDohomework(String dohomework)
  {
    this.dohomework = dohomework;
  }

  public String getDohomework()
  {
    return dohomework;
  }

  public LifeEntity()
  {
    super();
  }

  /**
   * @return the lifeId
   */
  public Integer getLifeId()
  {
    return lifeId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the likeLevel
   */
  public String getLikeLevel()
  {
    return likeLevel;
  }

  /**
   * @return the aboutPet
   */
  public String getAboutPet()
  {
    return aboutPet;
  }

  /**
   * @param lifeId
   *          the lifeId to set
   */
  public void setLifeId(Integer lifeId)
  {
    this.lifeId = lifeId;
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
   * @param likeLevel
   *          the likeLevel to set
   */
  public void setLikeLevel(String likeLevel)
  {
    this.likeLevel = likeLevel;
  }

  /**
   * @param aboutPet
   *          the aboutPet to set
   */
  public void setAboutPet(String aboutPet)
  {
    this.aboutPet = aboutPet;
  }

  public LifeEntity(Integer lifeId, Integer userId, String smoke, String drink,
    String exercise, String dietary, String shopping, String church,
    String rest, String friend, String maxcost, String homework,
    String dohomework, String likeLevel, String aboutPet)
  {
    super();
    this.lifeId = lifeId;
    this.userId = userId;
    this.smoke = smoke;
    this.drink = drink;
    this.exercise = exercise;
    this.dietary = dietary;
    this.shopping = shopping;
    this.church = church;
    this.rest = rest;
    this.friend = friend;
    this.maxcost = maxcost;
    this.homework = homework;
    this.dohomework = dohomework;
    this.likeLevel = likeLevel;
    this.aboutPet = aboutPet;
  }

}
