package org.xmgreat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.entity.UserEntity;

@Repository
public interface hwyMapper
{
	public List<UserEntity> select_LoginByTeleNum(@Param("teleNum")String teleNum,@Param("pasw")String pasw);
	
	public List<UserEntity> select_LoginByEmail(@Param("email")String email,@Param("pasw")String pasw);

	public int update_LoginTime(@Param("userId")Integer userId);
	
	public List<ParameterEntity> getParameterByPIds(@Param("pids")Integer... pids);
	
	public int insert_register(@Param("user")UserEntity user);
	
	public List<ParameterEntity> getAnyParameterWithPaging(@Param("pageNow")Integer pageNow , @Param("pageNum")String pageNum,@Param("value") String value, @Param("pids")Integer... pids);

	public List<ParameterEntity> getAnyParameterWithPageTotal(@Param("value")String value,@Param("pids")Integer... pids);

	public List<ParameterEntity> getParameterById(@Param("id")Integer id);
	
	public int delAnyParameter(@Param("id")Integer id);
	
	public int updateAnyParameter_TrNum3(@Param("id")Integer id,@Param("value")String value);
	
	public int updateAnyParameter_TrNum4(@Param("id")Integer id,@Param("value")String value);

	public int insertAnyParameter(@Param("value")String value,@Param("pid")Integer pid);
}
