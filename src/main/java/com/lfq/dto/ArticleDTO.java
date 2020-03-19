package com.lfq.dto;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;

import javax.validation.constraints.NotNull;

/**
 * @author: 李琪
 * @date: 2020/3/11
 * @description 一般类
 */
@Data
public class ArticleDTO {
    @NotNull(message = "用户ID不能为空")
    private String userId;
    @NotNull(message = "类型不能为空")
    private String typeId;
    @NotNull(message = "题目不能为空")
    private String title;
    @NotNull(message = "html不能为空")
    private String htmlContent;
    @NotNull(message = "markdown记录不能为空")
    private String markdownContent;

}