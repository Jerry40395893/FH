/*****************
 *版权所有 (c)2018,厦门great corp<p> 
 *文件名称：CompanyQxBiz.java
 *
 *创建时间：2018年9月21日
 *当前版本：v1.0
 */
package org.xmgreat.biz;

import org.xmgreat.entity.CityEntity;
import org.xmgreat.entity.UserEntity;

/**
 * @author 周群新
 *
 */
public interface CpQxBiz {

	public CityEntity selectCity();//二级联动查找省份城市
	
	public void saveData(UserEntity user);//保存资料
	
	public void saveSoliloquy(UserEntity userEntity);
}