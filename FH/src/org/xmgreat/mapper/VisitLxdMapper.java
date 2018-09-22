package org.xmgreat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.FocusEntity;
import org.xmgreat.entity.VisitEntity;

@Repository
public interface VisitLxdMapper
{
	// 添加访问或赞了谁的记录
	public int addVisit(VisitEntity visitEntity);

	// 更新访问或赞了谁的记录的时间
	public int updateVisitTime(VisitEntity visitEntity);

	// 查询所有记录
	public List<VisitEntity> selectAllVisit(VisitEntity visitEntity);

	// 查询单页记录
	public List<VisitEntity> selectPageVisit(@Param(value = "ve") VisitEntity visitEntity,
			@Param(value = "min") int min, @Param(value = "max") int max);

	// 添加关注
	public int addFocus(FocusEntity focusEntity);

	// 查询所有记录
	public List<VisitEntity> selectAllFocaus(FocusEntity focusEntity);

	// 查询所有记录
	public int updateFocusState(FocusEntity focusEntity);

	// 查询关注单页记录
	public List<VisitEntity> selectPageFocus(@Param(value = "fe") FocusEntity focusEntity,
			@Param(value = "min") int min, @Param(value = "max") int max);
}

