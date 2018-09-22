package org.xmgreat.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.entity.UserEntity;

@Repository
public interface AdminZzhMapper
{
	 public AdminEntity login(AdminEntity adminEntity);//登录
	 public List<AdminEntity> selecAdmin(AdminEntity adminEntity);//展示管理员列表
	 public void delAdmin(AdminEntity adminEntity);//删除管理员
	 public void addAdmin(AdminEntity adminEntity);//添加管理员
	 public void upAdminPsw(AdminEntity adminEntity);//重置密码
	 public List<MenuEntity> selecMenu(AdminEntity adminEntity);//查找动态菜单
	 public List<UserEntity> selecUser(ConditionEntity conditionEntity);//会员管理列表显示 
	 public List<UserEntity> getUserCount(ConditionEntity conditionEntity);//得到会员的个数
	 
}
