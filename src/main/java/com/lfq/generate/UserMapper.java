package com.lfq.generate;


import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);
    String selectByUserId(String name);
    User selectByPrimaryKey(String id);
    User loginUser(@Param("name")String username ,@Param("password") String password,@Param("email") String email);
    int updateByPrimaryKeySelective(User record);
    /**
     * 无建议(默认)
     * @description 更新登录凭证(自带加一操作)
     * @author ClearLi
     * @date 2020/3/16 22:00
     * @param id 某一个用户id
     * @param uuid 用户登录凭证
     * @return int
     */
    int updateLoginStatus(@Param("userId") String id,@Param("uuid") String uuid);
    int updateByPrimaryKey(User record);
    User selectByUuid(String uuid);
    /**
     * 无建议(默认)
     * @description 登录次数加一操作
     * @author ClearLi
     * @date 2020/3/16 22:03
     * @param id 用户id
     * @return int
     */
    int updateUUidAddOne(String id);
}