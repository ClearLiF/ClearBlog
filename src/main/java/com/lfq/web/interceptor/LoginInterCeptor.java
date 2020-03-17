package com.lfq.web.interceptor;

import com.lfq.generate.User;
import com.lfq.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

/**
 * @author: 李琪
 * @date: 2020/3/16
 * @description 登录拦截器
 */
@Slf4j
@Component
public class LoginInterCeptor implements HandlerInterceptor {
    UserService userService;
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    /**
     * 无建议(默认)
     * @description 进入controller层之前的操作
     * @author ClearLi
     * @date 2020/3/16 13:39
     * @param request
     * @param response
     * @param o
     * @return boolean
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        if (request.getSession().getAttribute("user")!=null) {
            log.info("已经登陆过了");
            //session中有登录记录
            return true;
        }else if (this.searchCookieForUser(request.getCookies(),request)) {
            //cookie中有登录记录
            log.info("cookie中有记录");
             return true;
        }
        log.info("哪都没记录"+ Arrays.toString(request.getCookies()));
        response.sendRedirect(request.getContextPath()+"/user/login");
        //request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,response);
        return false;
    }

    /**
     * 无建议(默认)
     * @description 在controller之后进行操作 可以操作视图
     * @author ClearLi
     * @date 2020/3/16 13:42
     * @param httpServletRequest request请求
     * @param httpServletResponse   response请求
     * @param o
     * @param modelAndView 视图解析
     * @return void
     */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
    public boolean searchCookieForUser(Cookie[] cookies, HttpServletRequest request){
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                log.info("开始检查cookie");
                //System.out.println(cookie.getName());
                if ("userCookie".equals(cookie.getName())){
                    String uuid = cookie.getValue();
                    log.info("cookie中有登录记录");
                    //System.out.println(uuid);
                    User loginUser = userService.selectUserLoginStatus(uuid);
                    if (loginUser!=null){
                        loginUser.setPassword("");
                        request.getSession().setAttribute("user",loginUser);
                        return true;
                    }
                }
            }
        }
        return false;

    }

}
