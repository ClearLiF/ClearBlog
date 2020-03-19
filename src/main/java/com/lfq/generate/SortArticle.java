package com.lfq.generate;

import java.io.Serializable;

/**
 * sort_article
 * @author 
 */
public class SortArticle implements Serializable {
    private String sortId;

    private String artId;

    private static final long serialVersionUID = 1L;

    public String getSortId() {
        return sortId;
    }

    public void setSortId(String sortId) {
        this.sortId = sortId;
    }

    public String getArtId() {
        return artId;
    }

    public void setArtId(String artId) {
        this.artId = artId;
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
        SortArticle other = (SortArticle) that;
        return (this.getSortId() == null ? other.getSortId() == null : this.getSortId().equals(other.getSortId()))
            && (this.getArtId() == null ? other.getArtId() == null : this.getArtId().equals(other.getArtId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getSortId() == null) ? 0 : getSortId().hashCode());
        result = prime * result + ((getArtId() == null) ? 0 : getArtId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", sortId=").append(sortId);
        sb.append(", artId=").append(artId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}