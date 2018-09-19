package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * ComboEntity 实体类 Wed Sep 19 16:06:34 CST 2018 沈杰---用户套餐表
 */

@Component
public class ComboEntity
{
  private Integer comboId;
  private String name;
  private Integer fare;
  private Integer month;
  private String time;
  private Integer discount;
  private Integer recommend;

  /**
   * @return the comboId
   */
  public Integer getComboId()
  {
    return comboId;
  }

  /**
   * @param comboId
   *          the comboId to set
   */
  public void setComboId(Integer comboId)
  {
    this.comboId = comboId;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  public String getName()
  {
    return name;
  }

  public void setFare(Integer fare)
  {
    this.fare = fare;
  }

  public Integer getFare()
  {
    return fare;
  }

  public void setMonth(Integer month)
  {
    this.month = month;
  }

  public Integer getMonth()
  {
    return month;
  }

  public void setTime(String time)
  {
    this.time = time;
  }

  public String getTime()
  {
    return time;
  }

  public void setDiscount(Integer discount)
  {
    this.discount = discount;
  }

  public Integer getDiscount()
  {
    return discount;
  }

  public void setRecommend(Integer recommend)
  {
    this.recommend = recommend;
  }

  public Integer getRecommend()
  {
    return recommend;
  }

  public ComboEntity()
  {
    super();
  }

  public ComboEntity(Integer comboId, String name, Integer fare, Integer month,
    String time, Integer discount, Integer recommend)
  {
    this.comboId = comboId;
    this.name = name;
    this.fare = fare;
    this.month = month;
    this.time = time;
    this.discount = discount;
    this.recommend = recommend;
  }
}
