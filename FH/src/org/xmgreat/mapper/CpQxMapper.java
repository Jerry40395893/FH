/*****************
 *版权所有 (c)2018,厦门great corp<p> 
 *文件名称：MyCompanyMapper.java
 *
 *创建时间：2018年9月20日
 *当前版本：v1.0
 */
package org.xmgreat.mapper;

import org.springframework.stereotype.Repository;
import org.xmgreat.entity.CityEntity;
import org.xmgreat.entity.UserEntity;

/**
 * @author 周群新
 *
 */
@Repository
public interface CpQxMapper {

	public CityEntity selectCity();
	
	public void saveData(UserEntity user);//保存我的资料
	
	public void saveSoliloquy(UserEntity userEntity);//保存内心独白
}
