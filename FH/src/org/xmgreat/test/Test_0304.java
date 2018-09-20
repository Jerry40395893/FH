package org.xmgreat.test;

import java.util.List;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.xmgreat.biz.impl.UserBizImpl;
import org.xmgreat.entity.UserEntity;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class Test_0304
{

  @Resource
  UserBizImpl userBizImpl;

  @Test
  public void test()
  {
    List<UserEntity> userList = userBizImpl.select_LoginByEmail("1", "1");

    System.out.println(userList.size());

  }

}
