package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * RoleEntity 实体类 Wed Sep 28 18:26:45 CST 2018 zzh
 * ---角色菜单中间表
 */

@Component
public class RoleMenuEntity
{
  private Integer roleId;
  private Integer menuId;
  private Integer middleId;
  public RoleMenuEntity()
  {
    super();
  }
public Integer getRoleId() {
	return roleId;
}
public void setRoleId(Integer roleId) {
	this.roleId = roleId;
}
public Integer getMenuId() {
	return menuId;
}
public void setMenuId(Integer menuId) {
	this.menuId = menuId;
}
public Integer getMiddleId() {
	return middleId;
}
public void setMiddleId(Integer middleId) {
	this.middleId = middleId;
}

 

}
