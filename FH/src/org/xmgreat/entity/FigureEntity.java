package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * FigureEntity 实体类 Wed Sep 19 16:30:06 CST 2018 沈杰---外貌体型表
 */

@Component
public class FigureEntity
{
  private Integer figureId;
  private Integer userId;
  private String weight;
  private String figure;
  private String feature;
  private String eyes;
  private String hair;
  private String skin;
  private String skinColor;
  private String muscle;
  private String healthy;
  private String wearStyle;

  public void setWeight(String weight)
  {
    this.weight = weight;
  }

  public String getWeight()
  {
    return weight;
  }

  public void setFigure(String figure)
  {
    this.figure = figure;
  }

  public String getFigure()
  {
    return figure;
  }

  public void setFeature(String feature)
  {
    this.feature = feature;
  }

  public String getFeature()
  {
    return feature;
  }

  public void setEyes(String eyes)
  {
    this.eyes = eyes;
  }

  public String getEyes()
  {
    return eyes;
  }

  public void setHair(String hair)
  {
    this.hair = hair;
  }

  public String getHair()
  {
    return hair;
  }

  public void setSkin(String skin)
  {
    this.skin = skin;
  }

  public String getSkin()
  {
    return skin;
  }

  public void setMuscle(String muscle)
  {
    this.muscle = muscle;
  }

  public String getMuscle()
  {
    return muscle;
  }

  public void setHealthy(String healthy)
  {
    this.healthy = healthy;
  }

  public String getHealthy()
  {
    return healthy;
  }

  public FigureEntity()
  {
    super();
  }

  public FigureEntity(Integer figureId, Integer userId, String weight,
    String figure, String feature, String eyes, String hair, String skin,
    String skinColor, String muscle, String healthy, String wearStyle)
  {
    super();
    this.figureId = figureId;
    this.userId = userId;
    this.weight = weight;
    this.figure = figure;
    this.feature = feature;
    this.eyes = eyes;
    this.hair = hair;
    this.skin = skin;
    this.skinColor = skinColor;
    this.muscle = muscle;
    this.healthy = healthy;
    this.wearStyle = wearStyle;
  }

  /**
   * @return the figureId
   */
  public Integer getFigureId()
  {
    return figureId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the skinColor
   */
  public String getSkinColor()
  {
    return skinColor;
  }

  /**
   * @return the wearStyle
   */
  public String getWearStyle()
  {
    return wearStyle;
  }

  /**
   * @param figureId
   *          the figureId to set
   */
  public void setFigureId(Integer figureId)
  {
    this.figureId = figureId;
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
   * @param skinColor
   *          the skinColor to set
   */
  public void setSkinColor(String skinColor)
  {
    this.skinColor = skinColor;
  }

  /**
   * @param wearStyle
   *          the wearStyle to set
   */
  public void setWearStyle(String wearStyle)
  {
    this.wearStyle = wearStyle;
  }

}
