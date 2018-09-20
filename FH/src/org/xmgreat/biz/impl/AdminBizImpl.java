package org.xmgreat.biz.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.xmgreat.biz.AdminBiz;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.mapper.AdminMapper;

@Service
public class AdminBizImpl implements AdminBiz
{
  @Resource
  private AdminMapper adminMapper;

  @Override
  public AdminEntity login(AdminEntity adminEntity)
  {
    AdminEntity adminB = adminMapper.login(adminEntity);
    return adminB;
  }

  @Override
  public List<AdminEntity> selecAdmin(AdminEntity adminEntity)
  {
    // TODO Auto-generated method stub
    return null;
  }

}
