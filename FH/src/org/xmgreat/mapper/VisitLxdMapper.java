package org.xmgreat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.VisitEntity;

@Repository
public interface VisitLxdMapper
{
    //添加看了谁或赞了谁的记录
	public int addVisit(VisitEntity visitEntity);
	//查询记录
	public List<VisitEntity> selectAllVisit(VisitEntity visitEntity);
	
	public List<VisitEntity> selectPageVisit(@Param(value = "ve") VisitEntity visitEntity,@Param(value = "min") int min,
			@Param(value = "max") int max);
	
	//public List<VisitEntity> selectPageVisit(VisitEntity visitEntity,Integer min,Integer max);
}
