package org.xmgreat.test;

import java.util.List;

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
	 public void test1() {
		 VisitEntity visitEntity=new VisitEntity();
		 visitEntity.setUserId(1);
		 visitEntity.setTouserId(7);
		 visitEntity.setStyle(1);//1表示看了谁2表示赞了谁
		 visitLxdBizImpl.addVisit(visitEntity);
	 }
	 
	 @Test
	 public void test2() {
		 VisitEntity visitEntity=new VisitEntity();
		 visitEntity.setUserId(1);
		 visitEntity.setTouserId(0);
		 visitEntity.setStyle(1);//1表示看了谁2表示赞了谁
		 List<VisitEntity> visitList=visitLxdBizImpl.selectPageVisit(visitEntity,1);
		 for(int i=0;i<=visitList.size();i++) {
			 System.out.println("看过谁"+visitList.get(i).getTouserId());
		 }
	 }
	 
	 @Test
	 public void test3() {
		 VisitEntity visitEntity=new VisitEntity();
		 visitEntity.setUserId(0);
		 visitEntity.setTouserId(3);
		 visitEntity.setStyle(1);//1表示看了谁2表示赞了谁
		 List<VisitEntity> visitList=visitLxdBizImpl.selectPageVisit(visitEntity,1);
		 for(int i=0;i<=visitList.size();i++) {
			 System.out.println("谁看过我"+visitList.get(i).getUserId());
		 }
	 }
	 
}
