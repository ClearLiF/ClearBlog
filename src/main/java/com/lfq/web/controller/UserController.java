package com.lfq.web.controller;

import com.lfq.config.DirComponent;
import com.lfq.dto.StatusDTO;
import com.lfq.dto.UserDTO;
import com.lfq.dto.UserLoginDTO;
import com.lfq.generate.Sysfield;
import com.lfq.generate.User;
import com.lfq.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author: 李琪
 * @date: 2020/3/9
 * @description 一般类
 */
@Controller//声明rest风格的控制器
//@EnableAutoConfiguration// 相当于写了配置文件
@Slf4j
@RequestMapping(value = "user")
public class UserController extends DirComponent {

    private UserService userService;
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("register")
    public String  register(){
        return "views/home/register";
    }
    @RequestMapping("login")
    public String login(){
        return "views/home/login";
    }

    @RequestMapping(value = "loginInto",method = RequestMethod.POST,produces="application/json;charset=UTF-8" )
    @ResponseBody
    public Object loginInto(@Valid UserLoginDTO userLoginDTO, BindingResult results,
                            HttpServletRequest request, HttpServletResponse response){
        Map<String, String > map = new HashMap<>();

        if (results.hasErrors()){
            log.error(">>>>登录错误信息:>>>>{}", userLoginDTO);
            return results.getFieldError();
        }
        User user= null;
        //包含@就用邮箱登录 前台已经验证用户名里没有@了  用户名或邮箱登录都用username字段
        if (userLoginDTO.getUsername().contains("@")){
            user= userService.loginUser("", userLoginDTO.getPassword(), userLoginDTO.getUsername());
        }else {
           user = userService.loginUser(userLoginDTO.getUsername(), userLoginDTO.getPassword(),"");
        }
        if (user!=null){
            //安全起见密码设置为空
            user.setPassword("");
            map.put("loginStatus", StatusDTO.REGISTER_STATUS_SUCCESS);
            //放入登录凭证
            String uuid = UUID.randomUUID().toString();
            user.setLoginuuid(uuid);
            request.getSession().setAttribute("user",user);
            //设置登录凭证cookie值 并保存到数据库中
            this.saveCookie(response,user.getId(),uuid);
        }else {
            //查不出数据则返回登陆失败
            map.put("loginStatus", StatusDTO.REGISTER_STATUS_FLA);
            //还要清理cookie数据
            this.clearUserCookie(request,response);
            return map;
        }
        System.out.println(userLoginDTO);
        return map;
    }
    @ResponseBody
    @RequestMapping(value = "checkUserName",method = RequestMethod.POST)
    public Object checkUserName(String  username){
        Map<String, Boolean> map = new HashMap<>();
        map.put("valid", userService.findUsername(username));
        return map;
    }
    //@RequestParam(value="id",defaultValue="0")
    //@RequestMapping(value = "/pets", method = RequestMethod.POST, consumes="application/json")
    @RequestMapping(value = "registerSave",method = RequestMethod.POST)
    @ResponseBody
    public Object registerSave(@Valid UserDTO userDTO, Model model, BindingResult results){
        if (results.hasErrors()){
            return results.getFieldError().getDefaultMessage();
        }
        Map<String,String> map = new HashMap<>();
        String userUUID = userService.saveUser(userDTO);
        if (!Boolean.FALSE.toString().equals(userUUID)){
            map.put("username", StatusDTO.REGISTER_STATUS_SUCCESS);
        }else {
            map.put("username", StatusDTO.REGISTER_STATUS_FLA);
        }
       // System.out.println(username);
        //model.addAttribute("username",userDTD.getUsername());
          //  model.addAttribute("password",userDTD.getPassword());
        return map;
    }
    /**
     * 无建议(默认)
     * @description 只允许post提交的  查询地址 省 市 县
     * @author ClearLi
     * @date 2020/3/14 14:52
     * @param parentiD 父类id
     * @param MyColums 类型
     * @return java.lang.Object
     */
    @ResponseBody
    @RequestMapping(value = "getAddress",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public   Object GetAddress(String  parentiD, String MyColums){
        return userService.selectByParentId(MyColums, parentiD);
    }

    /**
     *
     * @description 将登录凭证保存到cookie中，实现自动登录功能
     * @author ClearLi
     * @date 2020/2/18 12:40
     * @param response 使用response写入cookie
     * @param uuid 登录凭证
     * @return void
     */
    public void saveCookie(HttpServletResponse response,String userId, String uuid) {
        Cookie cookie = new Cookie("userCookie", uuid);
        cookie.setPath("/");
        //更新数据库存储的user状态
        userService.updateUserLoginStatus(userId,uuid);
        //设置一天的cookie值
        cookie.setMaxAge(60*60*24);
        response.addCookie(cookie);
    }
    /**
     * 无建议(默认)
     * @description 清除别的用户得到cookie，或者登录失败时调用
     * @author ClearLi
     * @date 2020/2/18 12:41
     * @param request
     * @param response
     * @return void
     */
    public void clearUserCookie(HttpServletRequest request,  HttpServletResponse response){
        //用户以两次不同账号登录将且不勾选自动登录那么就清除一下cookie
        //登录失败并且勾选了自动登录,也得删除这个cookie
        for (Cookie c:request.getCookies()
        ) {
            if("userCookie".equals(c.getName())){
                c.setMaxAge(0);
                response.addCookie(c);
            }
        }

    }


}
