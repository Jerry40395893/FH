package org.xmgreat.test;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.xmgreat.biz.UserLxdBiz;
import org.xmgreat.biz.VisitLxdBiz;
import org.xmgreat.entity.VisitEntity;
import org.xmgreat.tools.GetAge;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class TestLxd
{

  @Resource
  private VisitLxdBiz visitLxdBizImpl;
  @Resource 
  private UserLxdBiz userLxdBizImpl;

  @Test
  public void test1()
  {
//    VisitEntity visitEntity = new VisitEntity();
//    visitEntity.setUserId(1);
//    visitEntity.setTouserId(9);
//    visitEntity.setStyle(19);// 1表示看了谁2表示赞了谁
//    visitLxdBizImpl.addVisit(visitEntity);

//	  String dataOfBirth = "2016-9-28";
//		int age = GetAge.getAgeFromBirthTime(dataOfBirth);
//		System.out.println("age:" + age);
  }

}
