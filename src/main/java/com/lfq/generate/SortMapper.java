package com.lfq.generate;

import com.lfq.generate.Sort;

import java.util.List;

public interface SortMapper {
    int deleteByPrimaryKey(String id);

    int insert(Sort record);

    int insertSelective(Sort record);

    Sort selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Sort record);

    int updateByPrimaryKey(Sort record);

    List<Sort> selectAllByForeignKey();
}