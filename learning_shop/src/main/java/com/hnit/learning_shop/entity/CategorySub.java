package com.hnit.learning_shop.entity;

import java.io.Serializable;

public class CategorySub implements Serializable {
    private Integer id;

    private Integer catid;

    private String subCatName;

    private boolean active;
    
    

	public boolean getActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCatid() {
        return catid;
    }

    public void setCatid(Integer catid) {
        this.catid = catid;
    }

    public String getSubCatName() {
        return subCatName;
    }

    public void setSubCatName(String subCatName) {
        this.subCatName = subCatName == null ? null : subCatName.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", catid=").append(catid);
        sb.append(", subCatName=").append(subCatName);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}