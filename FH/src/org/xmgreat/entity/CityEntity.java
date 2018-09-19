package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * CityEntity 实体类 Wed Sep 19 15:52:49 CST 2018 沈杰---城市省份表
 */

@Component
public class CityEntity
{
  private Integer cityId;
  private String cityName;
  private Integer pId;
  private Integer hotId;

  public CityEntity()
  {
    super();
  }

  public CityEntity(Integer cityId, String cityName, Integer pId, Integer hotId)
  {
    super();
    this.cityId = cityId;
    this.cityName = cityName;
    this.pId = pId;
    this.hotId = hotId;
  }

  /**
   * @return the cityId
   */
  public Integer getCityId()
  {
    return cityId;
  }

  /**
   * @return the cityName
   */
  public String getCityName()
  {
    return cityName;
  }

  /**
   * @return the pId
   */
  public Integer getpId()
  {
    return pId;
  }

  /**
   * @return the hotId
   */
  public Integer getHotId()
  {
    return hotId;
  }

  /**
   * @param cityId
   *          the cityId to set
   */
  public void setCityId(Integer cityId)
  {
    this.cityId = cityId;
  }

  /**
   * @param cityName
   *          the cityName to set
   */
  public void setCityName(String cityName)
  {
    this.cityName = cityName;
  }

  /**
   * @param pId
   *          the pId to set
   */
  public void setpId(Integer pId)
  {
    this.pId = pId;
  }

  /**
   * @param hotId
   *          the hotId to set
   */
  public void setHotId(Integer hotId)
  {
    this.hotId = hotId;
  }

}
