package org.xmgreat.biz.impl;

import java.util.List;

import javax.annotation.Resource;

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

	
	
	@Override
	public int addVisit(VisitEntity visitEntity)
	{
		// 添加的结果
		int rs = 0;
		// 查询是否已经添加
		List<VisitEntity> visitList = visitLxdMapper.selectAllVisit(visitEntity);
		// 判断是否已经添加
		if (visitList.size() == 0)
		{
			// 添加记录
			rs = visitLxdMapper.addVisit(visitEntity);
		}

		return rs;
	}

	@Override
	public List<VisitEntity> selectPageVisit(VisitEntity visitEntity,int page)
	{
		
		// 查询所有记录
		List<VisitEntity> visitList = visitLxdMapper.selectAllVisit(visitEntity);
		//每页显示数量
		ParaEntity paraEntity=pageNumLxdMapper.selectPara(1);
		int pageNum=paraEntity.getPageNum();
		int pageTotal=0;
		if(visitList!=null) {
			
			//计算总页数
			if(visitList.size()%pageNum==0) {
				pageTotal=visitList.size()/pageNum;
			}else {
				pageTotal=visitList.size()/pageNum+1;
			}
			
			if(page>0&&page<=pageTotal) {
			    //获取分信息
				visitList=visitLxdMapper.selectPageVisit(visitEntity,pageNum*(page-1),pageNum*page);
			
			}
			
		}
		
		return visitList;
	}

}
