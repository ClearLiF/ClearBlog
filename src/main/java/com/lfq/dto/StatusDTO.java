package com.lfq.dto;

import java.util.Map;

/**
 * @author: clear
 * @date: 2020/3/14
 * @description 用于返回成功或失败的结果
 */
public class StatusDTO {
   public static final String REGISTER_STATUS_FLA = "false";
    public static final String REGISTER_STATUS_SUCCESS = "success";
    //简单的状态参数
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
