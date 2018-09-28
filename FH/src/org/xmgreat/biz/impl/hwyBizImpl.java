package org.xmgreat.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.xmgreat.biz.hwyBiz;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.mapper.hwyMapper;

@Service
public class hwyBizImpl implements hwyBiz {

	@Resource
	hwyMapper userMapper;
	
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
	
	@Override
	public int update_LoginTime(Integer userId) {
		// TODO Auto-generated method stub
		return userMapper.update_LoginTime(userId);
	}

	@Override
	public List<ParameterEntity> getParameterByPIds(Integer... pids) {
		// TODO Auto-generated method stub
		return userMapper.getParameterByPIds(pids);
	}

	@Override
	public int insert_register(UserEntity user) {
		// TODO Auto-generated method stub
		return userMapper.insert_register(user);
	}
	
	@Override
	public List<ParameterEntity> getAnyParameterWithPaging(Integer pageNow,String pageNum,String value,Integer... pids ) {
		// TODO Auto-generated method stub
		return userMapper.getAnyParameterWithPaging(pageNow,pageNum,value,pids);
	}

	@Override
	public List<ParameterEntity> getAnyParameterWithPageTotal(String value,Integer... pids) {
		// TODO Auto-generated method stub
		return userMapper.getAnyParameterWithPageTotal(value,pids);
	}

	@Override
	public List<ParameterEntity> getParameterById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getParameterById(id);
	}

	@Override
	public int delAnyParameter(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.delAnyParameter(id);
	}

	@Override
	public int updateAnyParameter_TrNum3(Integer id, String value) {
		// TODO Auto-generated method stub
		return userMapper.updateAnyParameter_TrNum3(id, value);
	}

	@Override
	public int updateAnyParameter_TrNum4(Integer id, String value) {
		// TODO Auto-generated method stub
		return userMapper.updateAnyParameter_TrNum4(id, value);
	}

	@Override
	public int insertAnyParameter( String value,Integer pid) {
		// TODO Auto-generated method stub
		return userMapper.insertAnyParameter( value, pid);
	}

	@Override
	public int update_ResetPasw(Long teleNum,String pasw) {
		// TODO Auto-generated method stub
		return userMapper.update_ResetPasw(teleNum,pasw);
	}

}
