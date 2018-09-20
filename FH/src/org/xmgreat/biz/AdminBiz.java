package org.xmgreat.biz;

import java.util.List;

import org.xmgreat.entity.AdminEntity;

public interface AdminBiz
{
 
  public AdminEntity login(AdminEntity adminEntity);
  public List<AdminEntity> selecAdmin(AdminEntity adminEntity);
}
