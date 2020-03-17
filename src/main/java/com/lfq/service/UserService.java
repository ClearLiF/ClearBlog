package com.lfq.service;


import com.lfq.dto.UserDTO;
import com.lfq.generate.Sysfield;
import com.lfq.generate.User;
import com.lfq.service.base.IBaseService;

import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般接口
 */
public interface UserService extends IBaseService<User> {
    /**
     * 无建议(默认)
     * @description 查找名称是否已经被注册
     * @author ClearLi
     * @date 2020/3/15 10:06
     * @param name 传进来的用户名
     * @return boolean
     *          返回true是正常的  false是已有用户
     */
    public boolean  findUsername(String name);
    public int register();
    /**
     * 无建议(默认)
     * @description 保存一个注册用户
     * @author ClearLi
     * @date 2020/3/15 16:22
     * @param userDTO 前台传来的值
     * @return java.lang.String
     *          返回成功为 userUUID 做登录使用
     *              失败为  false
     */
    public String saveUser(UserDTO userDTO);
    public User loginUser(String username,String password,String email);
    public int updateUserLoginStatus(String userId,String uuid);
    public User selectUserLoginStatus(String uuid);
    /**
     * 无建议(默认)
     * @description 登录次数加一
     * @author ClearLi
     * @date 2020/3/16 22:04
     * @param id 用户id
     * @return void
     */
    public int updateUserAddOne(String id );
    List<Sysfield> selectByParentId(String MyColums , String  ParentId);
}
