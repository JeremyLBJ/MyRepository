package com.hnit.learning_shop.entity;

import java.io.Serializable;

public class CoursePlan implements Serializable {
    private Integer id;

    private Integer cid;

    private String chapterName;

    private String planDesc;

    private Double timelength;

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

    public String getChapterName() {
        return chapterName;
    }

    public void setChapterName(String chapterName) {
        this.chapterName = chapterName == null ? null : chapterName.trim();
    }

    public String getPlanDesc() {
        return planDesc;
    }

    public void setPlanDesc(String planDesc) {
        this.planDesc = planDesc == null ? null : planDesc.trim();
    }

    public Double getTimelength() {
        return timelength;
    }

    public void setTimelength(Double timelength) {
        this.timelength = timelength;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", cid=").append(cid);
        sb.append(", chapterName=").append(chapterName);
        sb.append(", planDesc=").append(planDesc);
        sb.append(", timelength=").append(timelength);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}