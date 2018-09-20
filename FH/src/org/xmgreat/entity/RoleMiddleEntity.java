package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * AdminEntity 实体类 Tue Sep 18 22:21:09 CST 2018 张增辉
 */
@Component
public class RoleMiddleEntity
{
  private int roleid;
  private int adminid;
  private int middleId;

  public RoleMiddleEntity()
  {
    super();
  }

  public RoleMiddleEntity(int roleid, int adminid, int middleId)
  {
    super();
    this.roleid = roleid;
    this.adminid = adminid;
    this.middleId = middleId;
  }

  public int getRoleid()
  {
    return roleid;
  }

  public void setRoleid(int roleid)
  {
    this.roleid = roleid;
  }

  public int getAdminid()
  {
    return adminid;
  }

  public void setAdminid(int adminid)
  {
    this.adminid = adminid;
  }

  public int getMiddleId()
  {
    return middleId;
  }

  public void setMiddleId(int middleId)
  {
    this.middleId = middleId;
  }

}
