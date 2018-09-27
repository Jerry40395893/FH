package org.xmgreat.biz;

import javax.servlet.http.HttpServletRequest;

import org.xmgreat.entity.UserEntity;

public interface UserLxdBiz
{
	// 获取用户信息
	public UserEntity getUserInfo( int userId,HttpServletRequest request);
}
