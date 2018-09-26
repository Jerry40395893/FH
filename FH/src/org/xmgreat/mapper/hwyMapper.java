package org.xmgreat.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.entity.UserEntity;

@Repository
public interface hwyMapper
{
  public List<UserEntity> select_LoginByTeleNum(
    @Param("teleNum") String teleNum, @Param("pasw") String pasw);

  public List<UserEntity> select_LoginByEmail(@Param("email") String email,
    @Param("pasw") String pasw);

  public List<ParameterEntity> getParameterByPIds(
    @Param("pids") Integer... pids);

  public int insert_register(@Param("user") UserEntity user);

  public List<ParameterEntity> getAnyParameterWithPaging(
    @Param("pids") Integer... pids);
}
