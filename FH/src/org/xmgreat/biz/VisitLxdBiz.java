package org.xmgreat.biz;

import java.util.List;

import org.xmgreat.entity.VisitEntity;

public interface VisitLxdBiz
{

	public int addVisit(VisitEntity visitEntity);
	
	public List<VisitEntity> selectPageVisit(VisitEntity visitEntity,int page);
}
