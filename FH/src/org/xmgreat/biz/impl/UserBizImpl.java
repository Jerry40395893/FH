package org.xmgreat.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.xmgreat.biz.UserBiz;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.mapper.UserMapper;

@Service
public class UserBizImpl implements UserBiz {

	@Resource
	UserMapper userMapper;
	
	@Override
	public List<UserEntity> select_LoginByTeleNum(String teleNum, String pasw) {
		// TODO Auto-generated method stub
		return userMapper.select_LoginByTeleNum(teleNum, pasw);
	}

	@Override
	public List<UserEntity> select_LoginByEmail(String email, String pasw) {
		// TODO Auto-generated method stub
		return userMapper.select_LoginByEmail(email, pasw);
	}

}
