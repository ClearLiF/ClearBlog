package com.lfq.service;

import com.lfq.generate.Sort;
import com.lfq.service.base.IBaseService;

import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/18
 * @description 一般接口
 */
public interface SortService extends IBaseService<Sort> {
    List<Sort> selectAllByForeignKey();
}
