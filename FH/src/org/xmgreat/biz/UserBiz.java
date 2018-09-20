package org.xmgreat.biz;

import java.util.List;


import org.xmgreat.entity.UserEntity;

public interface UserBiz
{
	public List<UserEntity> select_LoginByTeleNum(String userName,String pasw);
	
	public List<UserEntity> select_LoginByEmail(String userName,String pasw);
}
