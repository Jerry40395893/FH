package org.xmgreat.test;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.mapper.AdminMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class TestCase
{
  @Resource
  private AdminMapper adminMapper;

  @Test
  public void getAdmin()
  {
    AdminEntity adminEntity = adminMapper.getAdmin(1);
    System.out.println(adminEntity.getAdmin());

  }

  /*
   * 
   * @Resource private AdminMapper adminMapper;
   * 
   * @Test public void sqlTest() {
   * 
   * // 通过条件查表获取SQL语句
   * 
   * RuleEntity RuleEntity =adminMapper.getSql(2);
   * 
   * String sql = RuleEntity.getSql();
   * 
   * //将获取的SQL语句传到xml文件进行查询
   * 
   * List<UserEntity> list = adminMapper.getAllList(sql);
   * 
   * for (int i = 0; i < list.size(); i++)
   * 
   * {
   * 
   * UserEntity UserEntity = list.get(i);
   * System.out.println(UserEntity.getUserName());
   * 
   * }
   * 
   * }
   * 
   */

}
