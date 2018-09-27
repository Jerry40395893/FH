package org.xmgreat.biz;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.xmgreat.entity.FocusEntity;
import org.xmgreat.entity.VisitEntity;
/*
 * 作者：林小东
 * 用途：处理看了谁、赞业务
 */
public interface VisitLxdBiz
{

	 /** 添加看了谁、赞的记录*/
	public void addVisit(VisitEntity visitEntity);
	 /** 查询看了谁、赞的单页数据 */
	public List<VisitEntity> selectPageVisit(HttpServletRequest request,VisitEntity visitEntity,int page);
	/** 添加关注的记录 */
	public String addFocus(FocusEntity focusEntity);
	
	/** 取消关注的记录 */
	public int cancelFocus(FocusEntity focusEntity);
	
	/** 查询关注的单页数据 */
	public List<FocusEntity> selectPageFocus(HttpServletRequest request, FocusEntity focusEntity, int page);



}

