package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * AdminEntity 实体类 后台管理员表Wed Sep 19 14:12:25 CST 2018 沈杰
 */
@Component
public class AdminEntity
{
  private Integer adminId;
  private String admin;
  private String pasw;
  private String type;

  public AdminEntity()
  {
    super();
  }

  public AdminEntity(Integer adminId, String admin, String pasw)
  {
    super();
    this.adminId = adminId;
    this.admin = admin;
    this.pasw = pasw;
  }

  /**
   * @return the adminId
   */
  public Integer getAdminId()
  {
    return adminId;
  }

  /**
   * @return the admin
   */
  public String getAdmin()
  {
    return admin;
  }

  /**
   * @return the pasw
   */
  public String getPasw()
  {
    return pasw;
  }

  /**
   * @param adminId
   *          the adminId to set
   */
  public void setAdminId(Integer adminId)
  {
    this.adminId = adminId;
  }

  /**
   * @param admin
   *          the admin to set
   */
  public void setAdmin(String admin)
  {
    this.admin = admin;
  }

  /**
   * @param pasw
   *          the pasw to set
   */
  public void setPasw(String pasw)
  {
    this.pasw = pasw;
  }

  public String getType()
  {
    return type;
  }

  public void setType(String type)
  {
    this.type = type;
  }

}
