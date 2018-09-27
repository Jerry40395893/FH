package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * VisitEntity 实体类 Wed Sep 19 18:49:00 CST 2018 沈杰---前台用户访问表
 */

@Component
public class VisitEntity
{
	/** 访问或赞的Id */
	private Integer visitId;
	/** 谁访问或赞的用户Id */
	private Integer userId;
	/** 被访问或赞的用户Id */
	private Integer toUserId;
	/** 访问或赞的时间 */
	private String time;
	/** 1为访问，2为赞 */
	private Integer style;
	/** 获取头像 */
	private PhotoEntity photoEntity;

	public void setTime(String time)
	{
		this.time = time;
	}

	public String getTime()
	{
		return time;
	}

	public void setStyle(Integer style)
	{
		this.style = style;
	}

	public Integer getStyle()
	{
		return style;
	}

	public VisitEntity()
	{
		super();
	}

	public VisitEntity(Integer visitId, Integer userId, Integer toUserId, String time, Integer style,
			PhotoEntity photoEntity)
	{
		super();
		this.visitId = visitId;
		this.userId = userId;
		this.toUserId = toUserId;
		this.time = time;
		this.style = style;
		this.photoEntity = photoEntity;
	}

	/**
	 * @return the visitId
	 */
	public Integer getVisitId()
	{
		return visitId;
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId()
	{
		return userId;
	}

	/**
	 * @return the touserId
	 */
	public Integer getToUserId()
	{
		return toUserId;
	}

	/**
	 * @param visitId
	 *            the visitId to set
	 */
	public void setVisitId(Integer visitId)
	{
		this.visitId = visitId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	/**
	 * @param touserId
	 *            the touserId to set
	 */
	public void setToUserId(Integer toUserId)
	{
		this.toUserId = toUserId;
	}

	public PhotoEntity getPhotoEntity()
	{
		return photoEntity;
	}

	public void setPhotoEntity(PhotoEntity photoEntity)
	{
		this.photoEntity = photoEntity;
	}

}
