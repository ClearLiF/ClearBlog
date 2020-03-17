package com.lfq.service;


import com.lfq.dto.PageBeanDTO;
import com.lfq.dto.UserDTO;
import com.lfq.generate.User;
import com.lfq.service.base.IBaseService;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般接口
 */
public interface PageService<T> {
    public PageBeanDTO<T> selectPage( PageBeanDTO<T> pageBeanDTO);

}
