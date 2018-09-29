package org.xmgreat.biz.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.xmgreat.biz.UserLxdBiz;
import org.xmgreat.entity.EmailEntity;
import org.xmgreat.entity.FigureEntity;
import org.xmgreat.entity.FocusEntity;
import org.xmgreat.entity.HobbyEntity;
import org.xmgreat.entity.LabelEntity;
import org.xmgreat.entity.LifeEntity;
import org.xmgreat.entity.MarriedEntity;
import org.xmgreat.entity.MateEntity;
import org.xmgreat.entity.ParaEntity;
import org.xmgreat.entity.PhotoEntity;
import org.xmgreat.entity.SalaryEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.VisitEntity;
import org.xmgreat.entity.WorkEntity;
import org.xmgreat.mapper.EmailLxdMapper;
import org.xmgreat.mapper.PageNumLxdMapper;
import org.xmgreat.mapper.UserLxdMapper;
import org.xmgreat.mapper.VisitLxdMapper;
import org.xmgreat.tools.GetAge;

@Service
public class UserLxdBizImpl implements UserLxdBiz
{
	@Resource
	private UserLxdMapper userLxdMapper;
	@Resource
	private VisitLxdMapper visitLxdMapper;
	@Resource
	private EmailLxdMapper emailLxdMapper;
	@Resource
	private PageNumLxdMapper pageNumLxdMapper;

	@Override
	public UserEntity getUserInfo(VisitEntity visitEntity, HttpServletRequest request)
	{
		// 获取用户基本信息
		UserEntity userEntity = userLxdMapper.getUser(visitEntity.getToUserId());
		// 获取用户外貌信息
		FigureEntity figureEntity = userLxdMapper.getFigureEntity(visitEntity.getToUserId());
		// 获取用户兴趣、爱好
		HobbyEntity hobbyEntity = userLxdMapper.getHobbyEntity(visitEntity.getToUserId());
		// 获取用户个性标签
		List<LabelEntity> labelList = userLxdMapper.getLabelEntity(visitEntity.getToUserId());
		// 获取用户生活习惯
		LifeEntity lifeEntity = userLxdMapper.getLifeEntity(visitEntity.getToUserId());
		// 获取用户婚姻观念
		MarriedEntity marriedEntity = userLxdMapper.getMarriedEntity(visitEntity.getToUserId());
		// 获取用户择偶条件
		MateEntity mateEntity = userLxdMapper.getMateEntity(visitEntity.getToUserId());
		// 获取用户头像
		PhotoEntity photoEntity = userLxdMapper.getPhoto(visitEntity.getToUserId());
		// 获取用户经济实力
		SalaryEntity salaryEntity = userLxdMapper.getSalaryEntity(visitEntity.getToUserId());
		// 获取用户工作学习
		WorkEntity workEntity = userLxdMapper.getWorkEntity(visitEntity.getToUserId());
		// 获取用户关注信息
		FocusEntity focusEntity = new FocusEntity();
		focusEntity.setUserId(visitEntity.getUserId());
		focusEntity.setToUserId(visitEntity.getToUserId());
		focusEntity.setDeleteId(0);
		List<FocusEntity> focusList = visitLxdMapper.selectAllFocus(focusEntity);
		// 获取用户赞的信息
		visitEntity.setStyle(20);
		List<VisitEntity> visitList = visitLxdMapper.selectAllVisit(visitEntity);

		request.setAttribute("focusList", focusList);
		request.setAttribute("visitList", visitList);
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

	@Override
	public UserEntity getUser(VisitEntity visitEntity, HttpServletRequest request)
	{
		// 获取用户基本信息
		UserEntity userEntity = userLxdMapper.getUser(visitEntity.getToUserId());
		// 获取用户外貌信息
		FigureEntity figureEntity = userLxdMapper.getFigureEntity(visitEntity.getToUserId());
		// 获取用户头像
		PhotoEntity photoEntity = userLxdMapper.getPhoto(visitEntity.getToUserId());

		int age = GetAge.getAgeFromBirthTime(userEntity.getBrithday());
		System.out.println("age:" + age);
		userEntity.setStrAge("" + age);
		request.setAttribute("userEntity", userEntity);
		request.setAttribute("figureEntity", figureEntity);
		request.setAttribute("photoEntity", photoEntity);
		return null;
	}

	@Override
	public int addEmail(EmailEntity emailEntity)
	{
		emailLxdMapper.addEmail(emailEntity);
		return 0;
	}

	@Override
	public List<EmailEntity> selectPageEmail(HttpServletRequest request, EmailEntity emailEntity, int page)
	{
		 List<EmailEntity> emailList=emailLxdMapper.getAllEmail(emailEntity);
		// 每页显示数量
			ParaEntity paraEntity = pageNumLxdMapper.selectPara(1);
			int pageNum = paraEntity.getPageNum();
			int totalPage = 1;
			if (emailList != null)
			{

				// 计算总页数
				if (emailList.size() % pageNum == 0)
				{
					totalPage = emailList.size() / pageNum;
				} else
				{
					totalPage = emailList.size() / pageNum + 1;
				}
	            if(totalPage==0) {
	            	totalPage=1;
	            }
				if (page > 0 && page <= totalPage)
				{
					// 获取分信息
					emailList =emailLxdMapper.getPageEmail(emailEntity, pageNum * (page - 1), pageNum * page);

				}

			}
			System.out.println("totalPage"+totalPage);
			System.out.println("page"+page);
			System.out.println("emailList"+emailList.size());
			for(int i=0;i<emailList.size();i++) {
				int age = GetAge.getAgeFromBirthTime(emailList.get(i).getUserEntity().getBrithday());
				emailList.get(i).getUserEntity().setStrAge(""+age);
			}
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("currentPage", page);
			request.setAttribute("emailList", emailList);
		    return null;
	}

}
