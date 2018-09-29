package org.xmgreat.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.entity.RoleEntity;
import org.xmgreat.entity.RoleMenuEntity;
import org.xmgreat.entity.RoleMiddleEntity;
import org.xmgreat.entity.UserEntity;

@Repository
public interface AdminZzhMapper
{
  public AdminEntity login(AdminEntity adminEntity);// 登录

  public List<AdminEntity> selecAdmin(AdminEntity adminEntity);// 展示管理员列表

  public List<AdminEntity> selecAdminP(int page);// 展示管理员列表-页数

  public void delAdmin(AdminEntity adminEntity);// 删除管理员

  public void addAdmin(AdminEntity adminEntity);// 添加管理员

  public void addRoleId(AdminEntity adminEntity);// 添加管理员角色id（中间表的）

  public void upAdminPsw(AdminEntity adminEntity);// 重置密码

  public List<MenuEntity> selecMenu(AdminEntity adminEntity);// 查找动态菜单

  public List<UserEntity> selecUser(ConditionEntity conditionEntity);// 会员管理列表显示

  public List<UserEntity> getUserCount(ConditionEntity conditionEntity);// 得到会员的个数

  public void startUser(ConditionEntity conditionEntityint);// 会员启用

  public void forbidUser(ConditionEntity conditionEntityint);// 会员禁用

  public void delUser(ConditionEntity conditionEntityint);// 会员删除

  public void audNoUser(ConditionEntity conditionEntityint);// 会员审核通过

  public void audYUser(ConditionEntity conditionEntityint);// 会员审核不通过
 
  public List<AdminEntity> nSAdmin(AdminEntity adminEntity);// 判断账户是否存在

  public List<UserEntity> infoUser(ConditionEntity conditionEntity);//用户信息

  public List<MenuEntity> alloMenu(RoleEntity roleEntity);//查询已分配的菜单
  
  public List<MenuEntity> unaMenu(RoleEntity roleEntity);//查询未分配的菜单
  
  public List<RoleMiddleEntity> roleMenu(RoleEntity roleEntity);//找到这个角色的菜单
  
  public void delMenu(RoleMenuEntity roleEntity); //删除选择的菜单
  
  public void chMenu(RoleMenuEntity roleEntity);//添加选择的菜单 

  public void addFnode(RoleMenuEntity roleEntity);//添加菜单的父节点
  
  public List<MenuEntity> selectAllMenu();//查询所有的菜单
  
  public List<RoleEntity> selectRole();//查找角色
}
