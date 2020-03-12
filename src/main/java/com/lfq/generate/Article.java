package com.lfq.generate;

import java.io.Serializable;
import java.util.Date;

/**
 * article
 * @author 
 */
public class Article implements Serializable {
    private String id;

    private String author;

    private Date createtime;

    private String title;

    private String body;

    private Integer authority;

    private Integer statu;

    private Long views;

    private Long likeCount;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public Integer getAuthority() {
        return authority;
    }

    public void setAuthority(Integer authority) {
        this.authority = authority;
    }

    public Integer getStatu() {
        return statu;
    }

    public void setStatu(Integer statu) {
        this.statu = statu;
    }

    public Long getViews() {
        return views;
    }

    public void setViews(Long views) {
        this.views = views;
    }

    public Long getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(Long likeCount) {
        this.likeCount = likeCount;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Article other = (Article) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getAuthor() == null ? other.getAuthor() == null : this.getAuthor().equals(other.getAuthor()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getBody() == null ? other.getBody() == null : this.getBody().equals(other.getBody()))
            && (this.getAuthority() == null ? other.getAuthority() == null : this.getAuthority().equals(other.getAuthority()))
            && (this.getStatu() == null ? other.getStatu() == null : this.getStatu().equals(other.getStatu()))
            && (this.getViews() == null ? other.getViews() == null : this.getViews().equals(other.getViews()))
            && (this.getLikeCount() == null ? other.getLikeCount() == null : this.getLikeCount().equals(other.getLikeCount()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getAuthor() == null) ? 0 : getAuthor().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getBody() == null) ? 0 : getBody().hashCode());
        result = prime * result + ((getAuthority() == null) ? 0 : getAuthority().hashCode());
        result = prime * result + ((getStatu() == null) ? 0 : getStatu().hashCode());
        result = prime * result + ((getViews() == null) ? 0 : getViews().hashCode());
        result = prime * result + ((getLikeCount() == null) ? 0 : getLikeCount().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", author=").append(author);
        sb.append(", createtime=").append(createtime);
        sb.append(", title=").append(title);
        sb.append(", body=").append(body);
        sb.append(", authority=").append(authority);
        sb.append(", statu=").append(statu);
        sb.append(", views=").append(views);
        sb.append(", likeCount=").append(likeCount);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}