/*****************
 *版权所有 (c)2018,厦门great corp<p> 
 *文件名称：MyCompanyMapper.java
 *
 *创建时间：2018年9月20日
 *当前版本：v1.0
 */
package org.xmgreat.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.xmgreat.entity.CityEntity;
import org.xmgreat.entity.FigureEntity;
import org.xmgreat.entity.HobbyEntity;
import org.xmgreat.entity.LifeEntity;
import org.xmgreat.entity.MarriedEntity;
import org.xmgreat.entity.SalaryEntity;
import org.xmgreat.entity.SchoolEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.WorkEntity;

/**
 * @author 周群新
 *
 */
@Repository
public interface CpQxMapper {

	public CityEntity selectCity();
	
	public void saveData(UserEntity user);//保存我的资料
	
	public void saveSoliloquy(UserEntity userEntity);//保存内心独白
	
	public void upHeadPortrait(UserEntity userEntity);//上传头像
	
	public void savaFinance(SalaryEntity salaryEntity);//添加经济实力
	
	public SalaryEntity selectEconomics(SalaryEntity salaryEntity);//查询经济实力
	
	public void savaEconomics(SalaryEntity salaryEntity);//保存经济实力
	
    public LifeEntity selectLife(LifeEntity lifeEntity);//查询生活方式
	
	public void savaLife(LifeEntity lifeEntity);//保存生活方式
	
	public void addLife(LifeEntity lifeEntity);//添加生活方式
	
	public List<SchoolEntity> School(SchoolEntity schoolEntity);//毕业院校
	
	public WorkEntity selectWork(WorkEntity workEntity);//查询工作学习
	
	public void savaWork(WorkEntity workEntity);//保存工作学习
	
	public void addWork(WorkEntity workEntity);//添加工作学习
	
    public FigureEntity selectAppearance(FigureEntity figureEntity);//查询外贸体型
	
	public void savaAppearance(FigureEntity figureEntity);//保存外贸体型
	
	public void addAppearance(FigureEntity figureEntity);//添加外贸体型
	
    public MarriedEntity selectMarried(MarriedEntity marriedEntity);//查询婚姻观念
	
	public void savaMarried(MarriedEntity marriedEntity);//保存婚姻观念
	
	public void addMarried(MarriedEntity marriedEntity);//添加婚姻观念
	
    public HobbyEntity selectHobby(HobbyEntity hobbyEntity);//查询兴趣爱好
	
	public void savaHobby(HobbyEntity hobbyEntity);//保存兴趣爱好
	
	public void addHobby(HobbyEntity hobbyEntity);//添加兴趣爱好
}
