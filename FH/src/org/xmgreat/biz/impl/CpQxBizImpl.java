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
	 */
	@Override
	public void saveData(UserEntity user) {
		// TODO Auto-generated method stub
		cpQxMapper.saveData(user);
	}
	/* (non-Javadoc)
	 * @see org.xmgreat.biz.CpQxBiz#saveSoliloquy(org.xmgreat.entity.UserEntity)
	 */
	@Override
	public void saveSoliloquy(UserEntity userEntity) {
		// TODO Auto-generated method stub
		cpQxMapper.saveSoliloquy(userEntity);
	}

}
