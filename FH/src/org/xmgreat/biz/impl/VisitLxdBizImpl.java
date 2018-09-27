package org.xmgreat.biz.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.xmgreat.biz.VisitLxdBiz;
import org.xmgreat.entity.FocusEntity;
import org.xmgreat.entity.ParaEntity;
import org.xmgreat.entity.VisitEntity;
import org.xmgreat.mapper.PageNumLxdMapper;
import org.xmgreat.mapper.VisitLxdMapper;

@Service
public class VisitLxdBizImpl implements VisitLxdBiz
{

	@Resource
	private VisitLxdMapper visitLxdMapper;
	@Resource
	private PageNumLxdMapper pageNumLxdMapper;
	
	 /** 添加访问或赞的记录*/
	@Override
	public void addVisit(VisitEntity visitEntity)
	{
		// 添加的结果
		int rs = 0;
		// 查询是否已经添加
		List<VisitEntity> visitList = visitLxdMapper.selectAllVisit(visitEntity);
		// 判断是否已经添加
		if (visitList.size() == 0)
		{
			// 添加记录
			visitLxdMapper.addVisit(visitEntity);
		} else
		{
			// 更新访问时间
			visitLxdMapper.updateVisitTime(visitEntity);
		}

	}

	@Override
	public List<VisitEntity> selectPageVisit(HttpServletRequest request,VisitEntity visitEntity, int page)
	{

		// 查询所有记录
		List<VisitEntity> visitList = visitLxdMapper.selectAllVisit(visitEntity);
		// 每页显示数量
		ParaEntity paraEntity = pageNumLxdMapper.selectPara(1);
		int pageNum = paraEntity.getPageNum();
		int totalPage = 0;
		if (visitList != null)
		{

			// 计算总页数
			if (visitList.size() % pageNum == 0)
			{
				totalPage = visitList.size() / pageNum;
			} else
			{
				totalPage = visitList.size() / pageNum + 1;
			}

			if (page > 0 && page <= totalPage)
			{
				// 获取分信息
				visitList = visitLxdMapper.selectPageVisit(visitEntity, pageNum * (page - 1), pageNum * page);

			}

		}
		request.setAttribute("visitTotalPage", totalPage);
		request.setAttribute("visitCurrentPage", page);
		request.setAttribute("visitList", visitList);
		return visitList;
	}

	@Override
	public String addFocus(FocusEntity focusEntity)
	{
		int rs = 0;
		String flag=null;
		//不查状态
		focusEntity.setDeleteId(0);
		List<FocusEntity> focusList = visitLxdMapper.selectAllFocus(focusEntity);
		if (focusList.size() == 0)
		{
			rs = visitLxdMapper.addFocus(focusEntity);

		} else if (focusList.get(0).getDeleteId() == 22)
		{
			focusEntity.setDeleteId(21);
			visitLxdMapper.updateFocusState(focusEntity);
			rs=1;
		}
		if(rs<=0) {
			flag="已经关注，请在我的关注中查看";
		}
		return flag;
		
	}

	@Override
	public int cancelFocus(FocusEntity focusEntity)
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<FocusEntity> selectPageFocus(HttpServletRequest request, FocusEntity focusEntity, int page)
	{
		// TODO Auto-generated method stub
		return null;
	}

}
