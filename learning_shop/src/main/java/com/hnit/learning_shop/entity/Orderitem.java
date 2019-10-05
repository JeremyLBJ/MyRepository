package com.hnit.learning_shop.entity;

import java.io.Serializable;

public class Orderitem implements Serializable {
    
	private CourseBase courseBase;
	public CourseBase getCourseBase() {
		return courseBase;
	}

	public void setCourseBase(CourseBase courseBase) {
		this.courseBase = courseBase;
	}

	private Integer id;

    private Integer cid;

    private Integer oid;

    private Double submoney;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Double getSubmoney() {
        return submoney;
    }

    public void setSubmoney(Double submoney) {
        this.submoney = submoney;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", cid=").append(cid);
        sb.append(", oid=").append(oid);
        sb.append(", submoney=").append(submoney);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}