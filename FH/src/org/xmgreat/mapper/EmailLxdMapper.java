package org.xmgreat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.xmgreat.entity.EmailEntity;

public interface EmailLxdMapper
{
	// 写信
	public int addEmail(EmailEntity emailEntity);

	// 读信更改状态
	public int updateState(EmailEntity emailEntity);

	// 删除
	public int deleteEmail(EmailEntity emailEntity);

	// 找回
	public int getBackEmaile(EmailEntity emailEntity);

	// 显示单个信件内容
	public EmailEntity getOneEmail(EmailEntity emailEntity);

	// 获取所有信件
	public List<EmailEntity> getAllEmail(EmailEntity emailEntity);
	
	// 获取单页信件
	public List<EmailEntity> getPageEmail(@Param(value = "ee")  EmailEntity emailEntity,
				@Param(value = "min") int min, @Param(value = "max") int max);
}
