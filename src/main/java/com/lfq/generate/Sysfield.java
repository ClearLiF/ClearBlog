package com.lfq.generate;

import java.io.Serializable;
import java.util.Date;

/**
 * sysfield
 * @author 
 */
public class Sysfield implements Serializable {
    private String id;

    private String mytexts;

    private String parentid;

    private String mytables;

    private String mycolums;

    private Integer sort;

    private String remark;

    private Date createtime;

    private String createperson;

    private Date updatetime;

    private String updateperson;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMytexts() {
        return mytexts;
    }

    public void setMytexts(String mytexts) {
        this.mytexts = mytexts;
    }

    public String getParentid() {
        return parentid;
    }

    public void setParentid(String parentid) {
        this.parentid = parentid;
    }

    public String getMytables() {
        return mytables;
    }

    public void setMytables(String mytables) {
        this.mytables = mytables;
    }

    public String getMycolums() {
        return mycolums;
    }

    public void setMycolums(String mycolums) {
        this.mycolums = mycolums;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getCreateperson() {
        return createperson;
    }

    public void setCreateperson(String createperson) {
        this.createperson = createperson;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getUpdateperson() {
        return updateperson;
    }

    public void setUpdateperson(String updateperson) {
        this.updateperson = updateperson;
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
        Sysfield other = (Sysfield) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getMytexts() == null ? other.getMytexts() == null : this.getMytexts().equals(other.getMytexts()))
            && (this.getParentid() == null ? other.getParentid() == null : this.getParentid().equals(other.getParentid()))
            && (this.getMytables() == null ? other.getMytables() == null : this.getMytables().equals(other.getMytables()))
            && (this.getMycolums() == null ? other.getMycolums() == null : this.getMycolums().equals(other.getMycolums()))
            && (this.getSort() == null ? other.getSort() == null : this.getSort().equals(other.getSort()))
            && (this.getRemark() == null ? other.getRemark() == null : this.getRemark().equals(other.getRemark()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getCreateperson() == null ? other.getCreateperson() == null : this.getCreateperson().equals(other.getCreateperson()))
            && (this.getUpdatetime() == null ? other.getUpdatetime() == null : this.getUpdatetime().equals(other.getUpdatetime()))
            && (this.getUpdateperson() == null ? other.getUpdateperson() == null : this.getUpdateperson().equals(other.getUpdateperson()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getMytexts() == null) ? 0 : getMytexts().hashCode());
        result = prime * result + ((getParentid() == null) ? 0 : getParentid().hashCode());
        result = prime * result + ((getMytables() == null) ? 0 : getMytables().hashCode());
        result = prime * result + ((getMycolums() == null) ? 0 : getMycolums().hashCode());
        result = prime * result + ((getSort() == null) ? 0 : getSort().hashCode());
        result = prime * result + ((getRemark() == null) ? 0 : getRemark().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getCreateperson() == null) ? 0 : getCreateperson().hashCode());
        result = prime * result + ((getUpdatetime() == null) ? 0 : getUpdatetime().hashCode());
        result = prime * result + ((getUpdateperson() == null) ? 0 : getUpdateperson().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", mytexts=").append(mytexts);
        sb.append(", parentid=").append(parentid);
        sb.append(", mytables=").append(mytables);
        sb.append(", mycolums=").append(mycolums);
        sb.append(", sort=").append(sort);
        sb.append(", remark=").append(remark);
        sb.append(", createtime=").append(createtime);
        sb.append(", createperson=").append(createperson);
        sb.append(", updatetime=").append(updatetime);
        sb.append(", updateperson=").append(updateperson);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}