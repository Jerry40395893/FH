package org.xmgreat.biz;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.entity.UserEntity;

public interface hwyBiz
{
	public List<UserEntity> select_LoginByTeleNum(String userName,String pasw);
	
	public List<UserEntity> select_LoginByEmail(String userName,String pasw);
	
	public int update_LoginTime(Integer userId);

	public List<ParameterEntity> getParameterByPIds(Integer... pids);
	
	public int insert_register(UserEntity user);
	
	public List<ParameterEntity> getAnyParameterWithPaging(Integer pageNow,String pageNum,String value,Integer... pids);

	public List<ParameterEntity> getAnyParameterWithPageTotal(String value,Integer... pids);

	public List<ParameterEntity> getParameterById(Integer id);
	
	public int delAnyParameter(Integer id);
	
	public int updateAnyParameter_TrNum3(Integer id,String value);
	
	public int updateAnyParameter_TrNum4(Integer id,String value);
	
	public int insertAnyParameter(String value,Integer pid);
}
