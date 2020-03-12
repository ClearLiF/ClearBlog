package com.lfq.service.impl;

import com.lfq.service.UserService;
import com.lfq.service.base.BaseServiceImpl;
import com.lfq.generate.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般类
 */
@Service
@Transactional
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Override
    public int deleteByPrimaryKey(String id) {
        return 0;
    }

    @Override
    public User selectByPrimaryKey(String id) {
        return usermapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return 0;
    }

    @Override
    public int insertSelective(User record) {
        return 0;
    }

    @Override
    public int insert(User record) {
        return 0;
    }
}
