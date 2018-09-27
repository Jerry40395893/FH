package org.xmgreat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.xmgreat.entity.FigureEntity;
import org.xmgreat.entity.HobbyEntity;
import org.xmgreat.entity.LabelEntity;
import org.xmgreat.entity.LifeEntity;
import org.xmgreat.entity.MarriedEntity;
import org.xmgreat.entity.MateEntity;
import org.xmgreat.entity.PhotoEntity;
import org.xmgreat.entity.SalaryEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.WorkEntity;

public interface UserLxdMapper
{

	 /** 获取用户的信息 **/
	  public UserEntity getUser(@Param("userId") Integer userId);

	  /** 获取用户的择偶要求 **/
	  public MateEntity getMateEntity(@Param("userId") Integer userId);

	  /** 获取用户的外貌体型 **/
	  public FigureEntity getFigureEntity(@Param("userId") Integer userId);

	  /** 获取用户的生活方式 **/
	  public LifeEntity getLifeEntity(@Param("userId") Integer userId);

	  /** 获取用户的工作学习 **/
	  public WorkEntity getWorkEntity(@Param("userId") Integer userId);

	  /** 获取用户的经济实力 **/
	  public SalaryEntity getSalaryEntity(@Param("userId") Integer userId);

	  /** 获取用户的婚姻观念 **/
	  public MarriedEntity getMarriedEntity(@Param("userId") Integer userId);

	  /** 获取用户的兴趣爱好 **/
	  public HobbyEntity getHobbyEntity(@Param("userId") Integer userId);
	  
	  /** 获取用户的个性标签 **/
	  public List<LabelEntity> getLabelEntity(@Param("userId") Integer userId);
	 
	  /** 获取用户的头像 **/
	  public PhotoEntity getPhoto(@Param("userId") Integer userId);

}
