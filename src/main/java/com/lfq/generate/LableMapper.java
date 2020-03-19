package com.lfq.generate;

import com.lfq.generate.Lable;

public interface LableMapper {
    int deleteByPrimaryKey(String id);

    int insert(Lable record);

    int insertSelective(Lable record);

    Lable selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Lable record);

    int updateByPrimaryKey(Lable record);
}