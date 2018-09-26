package org.xmgreat.biz.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.xmgreat.biz.hwyBiz;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.mapper.hwyMapper;

@Service
public class hwyBizImpl implements hwyBiz
{

  @Resource
  hwyMapper userMapper;

  @Override
  public List<UserEntity> select_LoginByTeleNum(String teleNum, String pasw)
  {
    // TODO Auto-generated method stub
    return userMapper.select_LoginByTeleNum(teleNum, pasw);
  }

  @Override
  public List<UserEntity> select_LoginByEmail(String email, String pasw)
  {
    // TODO Auto-generated method stub
    return userMapper.select_LoginByEmail(email, pasw);
  }

  @Override
  public List<ParameterEntity> getParameterByPIds(Integer... pids)
  {
    // TODO Auto-generated method stub
    return userMapper.getParameterByPIds(pids);
  }

  @Override
  public int insert_register(UserEntity user)
  {
    // TODO Auto-generated method stub
    return userMapper.insert_register(user);
  }

  @Override
  public List<ParameterEntity> getAnyParameterWithPaging(Integer... pids)
  {
    // TODO Auto-generated method stub
    return userMapper.getAnyParameterWithPaging(pids);
  }

}
