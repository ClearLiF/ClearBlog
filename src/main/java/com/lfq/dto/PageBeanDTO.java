package com.lfq.dto;
import java.util.List;
/**
 * @author: 李琪
 * @date: 2020/3/17
 * @description 一般类
 */
public class PageBeanDTO<T> {
    /*
    * 当前页
    * */
    private Integer currentPage;
    /*
    * 总页数
    * */
    private Integer totalPages;
    /*
    * 每页的数量
    * */
    private Integer pageSize;
    /*
    * 数据类型
    * */
    private List<T> rows;

    @Override
    public String toString() {
        return "PageBeanDTO{" +
                "currentPage=" + currentPage +
                ", totalPages=" + totalPages +
                ", pageSize=" + pageSize +
                ", rows=" + rows.size() +
                '}';
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(Integer totalPages) {
        this.totalPages = totalPages;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
