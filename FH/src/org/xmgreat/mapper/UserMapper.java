package org.xmgreat.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.UserEntity;

@Repository
public interface UserMapper
{

  public List<UserEntity> select_LoginByTeleNum(String teleNum, String pasw);

  public List<UserEntity> select_LoginByEmail(String email, String pasw);
}
