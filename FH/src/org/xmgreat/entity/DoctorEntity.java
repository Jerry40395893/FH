package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * DoctorEntity 实体类 Wed Sep 19 16:05:13 CST 2018 沈杰---参数表--里面包含学历身高薪资表表
 */

@Component
public class DoctorEntity
{
  private Integer doctorId;
  private String name;
  private Integer userData;
  private Integer styleName;

  public void setName(String name)
  {
    this.name = name;
  }

  public String getName()
  {
    return name;
  }

  public DoctorEntity()
  {
    super();
  }

  /**
   * @return the doctorId
   */
  public Integer getDoctorId()
  {
    return doctorId;
  }

  /**
   * @return the userData
   */
  public Integer getUserData()
  {
    return userData;
  }

  /**
   * @return the styleName
   */
  public Integer getStyleName()
  {
    return styleName;
  }

  /**
   * @param doctorId
   *          the doctorId to set
   */
  public void setDoctorId(Integer doctorId)
  {
    this.doctorId = doctorId;
  }

  /**
   * @param userData
   *          the userData to set
   */
  public void setUserData(Integer userData)
  {
    this.userData = userData;
  }

  /**
   * @param styleName
   *          the styleName to set
   */
  public void setStyleName(Integer styleName)
  {
    this.styleName = styleName;
  }

  public DoctorEntity(Integer doctorId, String name, Integer userData,
    Integer styleName)
  {
    super();
    this.doctorId = doctorId;
    this.name = name;
    this.userData = userData;
    this.styleName = styleName;
  }

}
