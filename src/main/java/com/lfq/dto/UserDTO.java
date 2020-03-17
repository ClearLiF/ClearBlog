package com.lfq.dto;

import lombok.Data;

import javax.validation.constraints.NotNull;
import java.util.Arrays;

/**
 * @author: 李琪
 * @date: 2020/3/14
 * @description 一般类
 */
@Data
public class UserDTO {
    @NotNull(message = "用户不能为空")
    private String username;
    @NotNull(message = "不能为空")
    private String password;
    @NotNull(message = "不能为空")
    private String email;
    private String Province;
    private String City;
    @NotNull(message = "不能为空")
    private String Village;
    @NotNull(message = "不能为空")
    private String gender;
    private String birthday;
    private String[] programs;

}
