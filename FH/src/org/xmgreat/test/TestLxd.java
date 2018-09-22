package org.xmgreat.test;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.xmgreat.biz.VisitLxdBiz;
import org.xmgreat.entity.VisitEntity;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class TestLxd
{

  @Resource
  private VisitLxdBiz visitLxdBizImpl;

  @Test
  public void test1()
  {
    VisitEntity visitEntity = new VisitEntity();
    visitEntity.setUserId(1);
    visitEntity.setTouserId(9);
    visitEntity.setStyle(19);// 1表示看了谁2表示赞了谁
    visitLxdBizImpl.addVisit(visitEntity);
  }

}
