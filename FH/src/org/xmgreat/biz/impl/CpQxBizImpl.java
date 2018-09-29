/*****************
 *版权所有 (c)2018,厦门great corp<p> 
 *文件名称：CompanyQxBizImpl.java
 *
 *创建时间：2018年9月21日
 *当前版本：v1.0
 */
package org.xmgreat.biz.impl;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xmgreat.biz.CpQxBiz;
import org.xmgreat.entity.CityEntity;
import org.xmgreat.entity.FigureEntity;
import org.xmgreat.entity.HobbyEntity;
import org.xmgreat.entity.LifeEntity;
import org.xmgreat.entity.MarriedEntity;
import org.xmgreat.entity.SalaryEntity;
import org.xmgreat.entity.SchoolEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.WorkEntity;
import org.xmgreat.mapper.CpQxMapper;

/**
 * @author 周群新
 *
 */
@Service
public class CpQxBizImpl implements CpQxBiz {

	@Resource
	private CpQxMapper cpQxMapper;
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private HttpServletResponse response;
	
	private SalaryEntity salary;
	private LifeEntity life;
	@Resource
	private List<SchoolEntity> school;
	private WorkEntity work;
	//PrintWriter out = response.getWriter();
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
	 * 查找经济实力
	 */
	@Override
	public SalaryEntity selectEconomics(SalaryEntity salaryEntity) {
		// TODO Auto-generated method stub
		
		salary = cpQxMapper.selectEconomics(salaryEntity);
		
		
		return salary;
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#selectLife(org.xmgreat.entity.LifeEntity)
	 * 查找生活方式
	 */
	@Override
	public LifeEntity selectLife(LifeEntity lifeEntity) {
		// TODO Auto-generated method stub
		
		life=cpQxMapper.selectLife(lifeEntity);
		request.setAttribute("life", life);
		return life;
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#savaLife(org.xmgreat.entity.LifeEntity)
	 * 保存生活方式
	 */
	@Override
	public void savaLife(LifeEntity lifeEntity) {
		// TODO Auto-generated method stub
		
		life=cpQxMapper.selectLife(lifeEntity);
		if(life==null) {
			cpQxMapper.addLife(lifeEntity);
		}else {
			cpQxMapper.savaLife(lifeEntity);
		}
		
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#School(org.xmgreat.entity.SchoolEntity)
	 */
	@Override
	public List<SchoolEntity> School(SchoolEntity schoolEntity) {
		// TODO Auto-generated method stub
		school = cpQxMapper.School(schoolEntity);
		
		
		return school;
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#selectWork(org.xmgreat.entity.WorkEntity)
	 */
	@Override
	public WorkEntity selectWork(WorkEntity workEntity) {
		// TODO Auto-generated method stub
		work = cpQxMapper.selectWork(workEntity);
		request.setAttribute("work", work);
		return work;
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#savaWork(org.xmgreat.entity.WorkEntity)
	 */
	@Override
	public void savaWork(WorkEntity workEntity) {
		// TODO Auto-generated method stub
		
		if(cpQxMapper.selectWork(workEntity)==null) {
			
			cpQxMapper.addWork(workEntity);
		}else {
			
			cpQxMapper.savaWork(workEntity);
		}
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#selectAppearance(org.xmgreat.entity.FigureEntity)
	 */
	@Override
	public FigureEntity selectAppearance(FigureEntity figureEntity) {
		// TODO Auto-generated method stub
		request.setAttribute("Appearance", cpQxMapper.selectAppearance(figureEntity));
		return cpQxMapper.selectAppearance(figureEntity);
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#savaAppearance(org.xmgreat.entity.FigureEntity)
	 */
	@Override
	public void savaAppearance(FigureEntity figureEntity) {
		// TODO Auto-generated method stub
		if(cpQxMapper.selectAppearance(figureEntity)==null) {
			
			cpQxMapper.addAppearance(figureEntity);
		}else {
			cpQxMapper.savaAppearance(figureEntity);
		}
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#selectMarried(org.xmgreat.entity.MarriedEntity)
	 */
	@Override
	public MarriedEntity selectMarried(MarriedEntity marriedEntity) {
		// TODO Auto-generated method stub
		return null;
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#savaMarried(org.xmgreat.entity.MarriedEntity)
	 */
	@Override
	public void savaMarried(MarriedEntity marriedEntity) {
		// TODO Auto-generated method stub
		if(cpQxMapper.selectMarried(marriedEntity)==null) {
			cpQxMapper.addMarried(marriedEntity);
			
		}else {
			cpQxMapper.savaMarried(marriedEntity);
		}
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#selectHobby(org.xmgreat.entity.HobbyEntity)
	 */
	@Override
	public HobbyEntity selectHobby(HobbyEntity hobbyEntity) {
		// TODO Auto-generated method stub
		return null;
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#savaHobby(org.xmgreat.entity.HobbyEntity)
	 */
	@Override
	public void savaHobby(HobbyEntity hobbyEntity) {
		// TODO Auto-generated method stub
		if(cpQxMapper.selectHobby(hobbyEntity)==null) {
			cpQxMapper.addHobby(hobbyEntity);
		}else {
			
			cpQxMapper.savaHobby(hobbyEntity);
		}
	}

}
