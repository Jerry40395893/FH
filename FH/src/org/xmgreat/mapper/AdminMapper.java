package org.xmgreat.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.AdminEntity;

@Repository
public interface AdminMapper
{
  public AdminEntity getAdmin(@Param("adminId") Integer adminId);
}
