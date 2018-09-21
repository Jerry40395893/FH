package org.xmgreat.biz.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.xmgreat.biz.AdminZzhBiz;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.mapper.AdminZzhMapper;

@Service
public class AdminZzhBizImpl implements AdminZzhBiz {
	@Resource
	private AdminZzhMapper adminMapper;

	/*
	 * 管理员登录
	 * */
	@Override
	public AdminEntity login(AdminEntity adminEntity) {
		AdminEntity adminB = adminMapper.login(adminEntity);
		return adminB;
	}
	/*
	 * 查询管理员
	 * */
	@Override
	public List<AdminEntity> selecAdmin(AdminEntity adminEntity) {
		List<AdminEntity> adminList = adminMapper.selecAdmin(adminEntity);
		return adminList;
	}
	/*
	 * 删除管理员
	 * */
	@Override
	public void delAdmin(AdminEntity adminEntity) {

		adminMapper.delAdmin(adminEntity);
	}
	/*
	 * 添加管理员
	 * */
	@Override
	public void addAdmin(AdminEntity adminEntity) {

		adminMapper.addAdmin(adminEntity);
	}
	/*
	 * 重置密码
	 * */
	@Override
	public void upPsw(AdminEntity adminEntity) {
		adminMapper.upAdminPsw(adminEntity);
		
	}
	/*
	 * 后台动态菜单展示
	 * */
	@Override
	public List<MenuEntity> selecMenu(AdminEntity adminEntity) {
		
		List<MenuEntity> menuList = adminMapper.selecMenu(adminEntity);
		
		return menuList;
	}

}
