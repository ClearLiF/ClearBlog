package com.lfq.service.base;

import com.lfq.generate.Comment;

import java.util.List;

/**
 * @author: Clear
 * @date: 2020/3/8
 * @description 一般接口
 */
public interface IBaseService<T> {
    int deleteByPrimaryKey(String id);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);


}
