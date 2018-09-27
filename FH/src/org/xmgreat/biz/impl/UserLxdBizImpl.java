package org.xmgreat.biz.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.xmgreat.biz.UserLxdBiz;
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
import org.xmgreat.mapper.UserLxdMapper;

@Service
public class UserLxdBizImpl implements UserLxdBiz
{
	@Resource
	private UserLxdMapper userLxdMapper;
	@Override
	public UserEntity getUserInfo(int userId,HttpServletRequest request)
	{
		System.out.println(11);
		UserEntity userEntity=userLxdMapper.getUser(userId);
		System.out.println(2);
		FigureEntity figureEntity=userLxdMapper.getFigureEntity(userId);
		System.out.println(3);
		HobbyEntity hobbyEntity=userLxdMapper.getHobbyEntity(userId);
		System.out.println(4);
		List<LabelEntity> labelList=userLxdMapper.getLabelEntity(userId);
		System.out.println(5);
		LifeEntity lifeEntity=userLxdMapper.getLifeEntity(userId);
		MarriedEntity marriedEntity=userLxdMapper.getMarriedEntity(userId);
		MateEntity mateEntity=userLxdMapper.getMateEntity(userId);
		PhotoEntity photoEntity=userLxdMapper.getPhoto(userId);
		SalaryEntity salaryEntity=userLxdMapper.getSalaryEntity(userId);
		WorkEntity workEntity=userLxdMapper.getWorkEntity(userId);
		System.out.println(22);

		request.setAttribute("user2",userEntity);
		request.setAttribute("user3","456");
		System.out.println(userEntity.getUserName());
		request.setAttribute("userEntity", userEntity);
		request.setAttribute("figureEntity", figureEntity);
		request.setAttribute("hobbyEntity", hobbyEntity);
		request.setAttribute("labelList", labelList);
		request.setAttribute("lifeEntity", lifeEntity);
		request.setAttribute("marriedEntity", marriedEntity);
		request.setAttribute("photoEntity", photoEntity);
		request.setAttribute("salaryEntity", salaryEntity);
		request.setAttribute("workEntity", workEntity);
		request.setAttribute("mateEntity", mateEntity);
		return null;
	}

}
