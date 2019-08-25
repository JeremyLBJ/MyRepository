package com.hnit.learning_shop.entity;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(value = { "hibernateLazyInitializer", "handler" })
public class Category implements Serializable {
    private Integer id;

    private String categoryName;
    
    private List<CategorySub> subCatList;
    

	private static final long serialVersionUID = 1L;

    public void setSubCatList(List<CategorySub> subCatList) {
		this.subCatList = subCatList;
	}
    public List<CategorySub> getSubCatList() {
		return subCatList;
	}
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName == null ? null : categoryName.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", categoryName=").append(categoryName);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}