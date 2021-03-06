package org.xmgreat.biz;

import java.util.List;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.entity.RoleEntity;
import org.xmgreat.entity.RoleMenuEntity;
import org.xmgreat.entity.RoleMiddleEntity;
import org.xmgreat.entity.UserEntity;

public interface AdminZzhBiz
{


  public AdminEntity login(AdminEntity adminEntity);// 后台管理员登录

  public List<AdminEntity> selecAdmin(AdminEntity adminEntity);// 后台管理员表显示。

  public List<AdminEntity> selecAdminP(int page);// 后台管理员表显示

  public void delAdmin(AdminEntity adminEntity);// 删除管理员

  public void addAdmin(AdminEntity adminEntity);// 添加管理员

  public void addRoleId(AdminEntity adminEntity);// 添加管理员中间表的角色

  public void upPsw(AdminEntity adminEntity);// 重置密码

  public List<MenuEntity> selecMenu(AdminEntity adminEntity);// 动态菜单显示

  public List<UserEntity> selecUserL(ConditionEntity conditionEntity);// 显示会员管理列表

  public void startUser(ConditionEntity conditionEntityint);// 会员启用

  public void forbidUser(ConditionEntity conditionEntityintint);// 会员禁用

  public void delUser(ConditionEntity conditionEntityint);// 会员删除

  public void audNUser(ConditionEntity conditionEntityint);// 会员审核不通过

  public void audYUser(ConditionEntity conditionEntityint);// 会员审核通过

  public String checkAdmin(AdminEntity adminEntity);// 判断账户是否存在

  public List<UserEntity> userInfo(ConditionEntity conditionEntity);// 显示会员管理列表
  
  public List<MenuEntity> alloMenu(RoleEntity roleEntity);//查询已分配的菜单
  
  public List<MenuEntity> unaMenu(RoleEntity roleEntity);//查询未分配的菜单
  
  public List<RoleMiddleEntity> roleMenu(RoleEntity roleEntity);//找到这个角色的菜单
  
  public void delMenu(RoleMenuEntity roleEntity); //删除选择的菜单
  
  public void chMenu(RoleMenuEntity roleEntity);//添加选择的菜单 

  public void addFnode(RoleMenuEntity roleEntity);//添加菜单的父节点
  
  public List<MenuEntity> selectAllMenu();//查询所有的菜单
  
  public List<RoleEntity> selectRole();//查找角色
 
}
