package org.xmgreat.test;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class TestCase
{

  public void test()
  {
    System.out.println(11111);
    System.out.println();
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
