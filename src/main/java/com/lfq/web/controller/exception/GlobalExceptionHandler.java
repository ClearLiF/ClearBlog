package com.lfq.web.controller.exception;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author: 李琪
 * @date: 2020/3/9
 * @description 用于捕获全局的异常
 */
@Slf4j
@ControllerAdvice//控制器切面
public class GlobalExceptionHandler {
    /**
     * 无建议(默认)
     * @description 处理异常的方法(捕获运行时异常)
     * @author ClearLi
     * @date 2020/3/9 13:18
     * @return java.util.Map<java.lang.String, java.lang.Object>
     */
    @ExceptionHandler(RuntimeException.class)
    @ResponseBody
    public Object exceptionHandler(HttpServletRequest request, Exception e){
       Map<String, Object> map = new HashMap<String, Object>();
        map.put("errorCode", "101");
       /* ModelAndView view = new ModelAndView();
        view.setViewName("views/blog/blogError");*/
        if(e instanceof BusinessException) {
            log.error("业务异常："+e.getMessage());
            BusinessException businessException = (BusinessException)e;
            map.put("业务错误",businessException.getMessage());
            return map;
        }
        //未知错误
        map.put("系统错误","联系管理员");
        return map;
    }
}
