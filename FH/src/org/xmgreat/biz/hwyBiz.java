package org.xmgreat.biz;

import java.util.List;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.entity.UserEntity;

public interface hwyBiz
{
  public List<UserEntity> select_LoginByTeleNum(String userName, String pasw);

  public List<UserEntity> select_LoginByEmail(String userName, String pasw);

  List<ParameterEntity> getParameterByPIds(Integer... pids);

  public int insert_register(UserEntity user);

  public List<ParameterEntity> getAnyParameterWithPaging(Integer... pids);

}
