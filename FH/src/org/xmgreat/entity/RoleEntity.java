package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * RoleEntity 实体类 Wed Sep 19 18:26:45 CST 2018 沈杰---角色表
 */

@Component
public class RoleEntity
{
  private Integer roleId;
  private String roleName;

  public RoleEntity()
  {
    super();
  }

  public RoleEntity(Integer roleId, String roleName)
  {
    super();
    this.roleId = roleId;
    this.roleName = roleName;
  }

  /**
   * @return the roleId
   */
  public Integer getRoleId()
  {
    return roleId;
  }

  /**
   * @return the roleName
   */
  public String getRoleName()
  {
    return roleName;
  }

  /**
   * @param roleId
   *          the roleId to set
   */
  public void setRoleId(Integer roleId)
  {
    this.roleId = roleId;
  }

  /**
   * @param roleName
   *          the roleName to set
   */
  public void setRoleName(String roleName)
  {
    this.roleName = roleName;
  }

}
