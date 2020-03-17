package com.lfq.dto;

import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * @author: 李琪
 * @date: 2020/3/15
 * @description 一般类
 */
@Data
public class UserLoginDTO {
    @NotNull(message = "用户名不能为空")
    String username;
    @NotNull(message = "密码不能为空")
    String password;
}
