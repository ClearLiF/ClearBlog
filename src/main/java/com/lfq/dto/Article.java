package com.lfq.dto;

/**
 * @author: 李琪
 * @date: 2020/3/11
 * @description 一般类
 */
public class Article {
    private String title;
    private String htmlContent;
    private String markdownContent;

    @Override
    public String toString() {
        return "Article{" +
                "title='" + title + '\'' +
                ", htmlContent='" + htmlContent + '\'' +
                ", markdownContent='" + markdownContent + '\'' +
                '}';
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHtmlContent() {
        return htmlContent;
    }

    public void setHtmlContent(String htmlContent) {
        this.htmlContent = htmlContent;
    }

    public String getMarkdownContent() {
        return markdownContent;
    }

    public void setMarkdownContent(String markdownContent) {
        this.markdownContent = markdownContent;
    }
}