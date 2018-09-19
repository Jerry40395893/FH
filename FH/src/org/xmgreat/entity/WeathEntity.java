package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * WeathEntity 实体类 Wed Sep 19 18:50:36 CST 2018 沈杰---前台用户财富表
 */

@Component
public class WeathEntity
{
  private Integer userId;
  private Integer moneyId;
  private Integer styleId;
  private String thing;
  private Integer leftMoney;
  private Integer money;
  private String happenTime;

  public void setThing(String thing)
  {
    this.thing = thing;
  }

  public String getThing()
  {
    return thing;
  }

  public void setMoney(Integer money)
  {
    this.money = money;
  }

  public Integer getMoney()
  {
    return money;
  }

  public WeathEntity()
  {
    super();
  }

  public WeathEntity(Integer userId, Integer moneyId, Integer styleId,
    String thing, Integer leftMoney, Integer money, String happenTime)
  {
    super();
    this.userId = userId;
    this.moneyId = moneyId;
    this.styleId = styleId;
    this.thing = thing;
    this.leftMoney = leftMoney;
    this.money = money;
    this.happenTime = happenTime;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the moneyId
   */
  public Integer getMoneyId()
  {
    return moneyId;
  }

  /**
   * @return the styleId
   */
  public Integer getStyleId()
  {
    return styleId;
  }

  /**
   * @return the leftMoney
   */
  public Integer getLeftMoney()
  {
    return leftMoney;
  }

  /**
   * @return the happenTime
   */
  public String getHappenTime()
  {
    return happenTime;
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
   * @param moneyId
   *          the moneyId to set
   */
  public void setMoneyId(Integer moneyId)
  {
    this.moneyId = moneyId;
  }

  /**
   * @param styleId
   *          the styleId to set
   */
  public void setStyleId(Integer styleId)
  {
    this.styleId = styleId;
  }

  /**
   * @param leftMoney
   *          the leftMoney to set
   */
  public void setLeftMoney(Integer leftMoney)
  {
    this.leftMoney = leftMoney;
  }

  /**
   * @param happenTime
   *          the happenTime to set
   */
  public void setHappenTime(String happenTime)
  {
    this.happenTime = happenTime;
  }

}
