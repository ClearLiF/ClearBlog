package com.lfq.service.impl;

import com.lfq.generate.Sort;
import com.lfq.generate.SortArticleMapper;
import com.lfq.generate.SortMapper;
import com.lfq.service.SortService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/18
 * @description 一般类
 */
@Service
@Slf4j
@Transactional
public class SortServiceImpl implements SortService {
    private SortMapper sortMapper;
    @Autowired
    public void setSortMapper(SortMapper sortMapper) {
        this.sortMapper = sortMapper;
    }
    @Override
    public int deleteByPrimaryKey(String id) {
        return 0;
    }

    @Override
    public int insert(Sort record) {
        return 0;
    }

    @Override
    public int insertSelective(Sort record) {
        return 0;
    }

    @Override
    public Sort selectByPrimaryKey(String id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Sort record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Sort record) {
        return 0;
    }

    @Override
    public List<Sort> selectAllByForeignKey() {

      try {
            return  sortMapper.selectAllByForeignKey();
     } catch (Exception e) {
          log.error("查询分类出现问题sort error");
        }
     return null;
    }
}
