package org.xmgreat.mapper;

import java.util.List;


import org.springframework.stereotype.Repository;
import org.xmgreat.entity.AdminEntity;

@Repository
public interface AdminMapper
{
	 public AdminEntity login(AdminEntity adminEntity);
	 public List<AdminEntity> selecAdmin(AdminEntity adminEntity);
}
