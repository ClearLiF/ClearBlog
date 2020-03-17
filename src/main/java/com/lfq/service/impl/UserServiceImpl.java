package com.lfq.service.impl;

import com.lfq.dto.UserDTO;
import com.lfq.generate.Sysfield;
import com.lfq.generate.User;
import com.lfq.service.UserService;
import com.lfq.service.base.BaseServiceImpl;
import com.lfq.utils.MD5Utils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般类
 */
@Service
@Transactional
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Override
    public List<Sysfield> selectByParentId(String MyColums, String ParentId) {
        return  sysfieldMapper.selectByParentIdAndMyTables(MyColums,ParentId);
    }

    @Override
    public boolean  findUsername(String name) {
        String byUserId = usermapper.selectByUserId(name);
        return "".equals(byUserId) || byUserId == null;
    }

    @Override
    public int register() {
        return 0;
    }

    @Override
    public String  saveUser(UserDTO userDTO) {
        String userUuid = UUID.randomUUID().toString();
        User user = new User();
        user.setName(userDTO.getUsername());
        //存md5的密码
        user.setPassword(MD5Utils.stringMD5(userDTO.getPassword()));
        SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd");
        Date date = null;
        try {
           date = sdf.parse(userDTO.getBirthday());
        } catch (ParseException e) {
           return "false";
        }
        user.setBirthday(date);
        user.setEmail(userDTO.getEmail());
        user.setGender(userDTO.getGender());
        user.setIcon("/icon/icon.png");
        user.setLoaction(userDTO.getVillage());
        user.setLoginstatu(1);
        user.setLoginuuid(userUuid);
        if (usermapper.insertSelective(user)!=0){
            return userUuid;
        }else
            return "false";
    }

    @Override
    public User loginUser(String username, String password, String email) {
        return usermapper.loginUser(username,MD5Utils.stringMD5(password),email);
    }

    @Override
    public int updateUserLoginStatus(String userId, String uuid) {
        return usermapper.updateLoginStatus(userId,uuid);
    }

    @Override
    public User selectUserLoginStatus(String uuid) {
        return usermapper.selectByUuid(uuid);
    }

    @Override
    public int  updateUserAddOne(String id) {
        return usermapper.updateUUidAddOne(id);
    }

    @Override
    public int deleteByPrimaryKey(String id) {
        return 0;
    }

    @Override
    public int insert(User record) {
        return 0;
    }

    @Override
    public int insertSelective(User record) {
        return 0;
    }

    @Override
    public User selectByPrimaryKey(String id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return 0;
    }
}
