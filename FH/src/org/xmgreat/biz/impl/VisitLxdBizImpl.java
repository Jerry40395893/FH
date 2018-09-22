package org.xmgreat.biz.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.xmgreat.biz.VisitLxdBiz;
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

}
