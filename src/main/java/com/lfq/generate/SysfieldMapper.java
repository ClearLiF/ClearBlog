package com.lfq.generate;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysfieldMapper {
    int deleteByPrimaryKey(String id);

    int insert(Sysfield record);
    List<Sysfield> selectByParentIdAndMyTables(@Param("MyColums")String MyColums,@Param("ParentId") String  ParentId);
    List<Sysfield> selectByParentId(@Param("MyColums")String MyColums,@Param("ParentId") String  ParentId);
    int insertSelective(Sysfield record);

    Sysfield selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Sysfield record);

    int updateByPrimaryKey(Sysfield record);
}