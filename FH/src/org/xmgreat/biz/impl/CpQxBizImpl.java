/*****************
 *版权所有 (c)2018,厦门great corp<p> 
 *文件名称：CompanyQxBizImpl.java
 *
 *创建时间：2018年9月21日
 *当前版本：v1.0
 */
package org.xmgreat.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.xmgreat.biz.CpQxBiz;
import org.xmgreat.entity.CityEntity;
import org.xmgreat.entity.SalaryEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.mapper.CpQxMapper;

/**
 * @author 周群新
 *
 */
@Service
public class CpQxBizImpl implements CpQxBiz {

	@Resource
	private CpQxMapper cpQxMapper;
	
	private SalaryEntity salary;
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#selectCity()
	 */
	@Override
	public CityEntity selectCity() {
		// TODO Auto-generated method stub
		return cpQxMapper.selectCity();
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#saveData(org.xmgreat.entity.UserEntity)
	 * 保存资料
	 */
	@Override
	public void saveData(UserEntity user) {
		// TODO Auto-generated method stub
		cpQxMapper.saveData(user);
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#saveSoliloquy(org.xmgreat.entity.UserEntity)
	 * 内心独白
	 */
	@Override
	public void saveSoliloquy(UserEntity userEntity) {
		// TODO Auto-generated method stub
		cpQxMapper.saveSoliloquy(userEntity);
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#upHeadPortrait(org.xmgreat.entity.UserEntity)
	 * 上传头像
	 */
	@Override
	public void upHeadPortrait(UserEntity userEntity) {
		// TODO Auto-generated method stub
		cpQxMapper.upHeadPortrait(userEntity);
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#Economics(java.lang.String, java.lang.String, org.xmgreat.entity.SalaryEntity)
	 */
	@Override
	public void Economics(String finance, String debt, SalaryEntity salaryEntity) {
		// TODO Auto-generated method stub
		
//		String[] str = finance.split(",");
//		for(int i = 0;i<str.length;i++) {
//			System.out.println("实力"+str[i]);
//			String st = str[i];
//			salaryEntity.setFinance(st);
		
		salary = cpQxMapper.selectEconomics(salaryEntity);
		
		if(salary==null) {
			
			cpQxMapper.savaFinance(salaryEntity);
		}else {
			cpQxMapper.savaEconomics(salaryEntity);
		}
		
		
			
			
//		}
		
		
		
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#selectEconomics(org.xmgreat.entity.SalaryEntity)
	 */
	@Override
	public SalaryEntity selectEconomics(SalaryEntity salaryEntity) {
		// TODO Auto-generated method stub
		
		salary = cpQxMapper.selectEconomics(salaryEntity);
		
		
		return salary;
	}

}
