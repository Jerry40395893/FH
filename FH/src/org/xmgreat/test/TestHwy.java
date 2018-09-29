package org.xmgreat.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.xmgreat.biz.impl.hwyBizImpl;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.tools.MD5Utils;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class TestHwy {

	@Resource
	hwyBizImpl hwyBizImpl;

	// 请求任意参数
	@Test
	public void test() {
		// 传入一个id或pid
		Integer id = null;
		Integer pid = null;
		List<ParameterEntity> parameterList1 = hwyBizImpl.getParameterByPIds(pid);
		// 传多个pid
		List<ParameterEntity> parameterList2 = hwyBizImpl.getParameterByPIds(pid, pid, pid, pid, pid);
		// 传一个id
		List<ParameterEntity> parameterList3 = hwyBizImpl.getParameterById(id);
	}

	@Test
	public void test2() {

	}

	@Test
	public void alipay() {
		
	}

}
