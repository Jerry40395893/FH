package org.xmgreat.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.xmgreat.entity.ParaEntity;

@Repository
public interface PageNumLxdMapper
{

	//查询单页数据量
	public ParaEntity selectPara(@Param(value = "numId") int numId);
}

