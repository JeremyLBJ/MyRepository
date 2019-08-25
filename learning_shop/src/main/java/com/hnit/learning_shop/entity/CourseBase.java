package com.hnit.learning_shop.entity;

import java.io.Serializable;
import java.util.Date;

public class CourseBase implements Serializable {
    private Integer id;

    private String cname;

    private Integer catid;

    private Integer tid;

    private String grade;

    private String cDesc;

    private Double price;

    private Double oldPricee;

    private Date startTime;

    private Date endTime;

    private String pic;

    private Integer learncount;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public Integer getCatid() {
        return catid;
    }

    public void setCatid(Integer catid) {
        this.catid = catid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade == null ? null : grade.trim();
    }

    public String getcDesc() {
        return cDesc;
    }

    public void setcDesc(String cDesc) {
        this.cDesc = cDesc == null ? null : cDesc.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getOldPricee() {
        return oldPricee;
    }

    public void setOldPricee(Double oldPricee) {
        this.oldPricee = oldPricee;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public Integer getLearncount() {
        return learncount;
    }

    public void setLearncount(Integer learncount) {
        this.learncount = learncount;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", cname=").append(cname);
        sb.append(", catid=").append(catid);
        sb.append(", tid=").append(tid);
        sb.append(", grade=").append(grade);
        sb.append(", cDesc=").append(cDesc);
        sb.append(", price=").append(price);
        sb.append(", oldPricee=").append(oldPricee);
        sb.append(", startTime=").append(startTime);
        sb.append(", endTime=").append(endTime);
        sb.append(", pic=").append(pic);
        sb.append(", learncount=").append(learncount);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}