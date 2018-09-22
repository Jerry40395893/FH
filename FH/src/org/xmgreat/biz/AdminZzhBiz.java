package org.xmgreat.biz;

import java.util.List;

import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.entity.UserEntity;

public interface AdminZzhBiz
{
 

  public AdminEntity login(AdminEntity adminEntity);//后台管理员登录

 //github.com/Jerry40395893/FH.git
  public List<AdminEntity> selecAdmin(AdminEntity adminEntity);//后台管理员表显示
  public void delAdmin(AdminEntity adminEntity);//删除管理员
  public void addAdmin(AdminEntity adminEntity);//添加管理员
  public void upPsw(AdminEntity adminEntity);//重置密码
  public List<MenuEntity> selecMenu(AdminEntity adminEntity);//动态菜单显示
  public List<UserEntity> selecUserL(ConditionEntity conditionEntity);//显示会员管理列表
}
