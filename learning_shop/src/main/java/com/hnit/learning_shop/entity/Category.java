package com.hnit.learning_shop.entity;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;



@JsonIgnoreProperties(value = { "hibernateLazyInitializer", "handler" })
public class Category implements Serializable {
    
	private Integer id;

    private String categoryName;
    

   private List<CategorySub> categorySubList;
   
    private static final long serialVersionUID = 1L;

    public List<CategorySub> getCategorySubList() {
		return categorySubList;
	}

	public void setCategorySubList(List<CategorySub> categorySubList) {
		this.categorySubList = categorySubList;
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
		return "Category [id=" + id + ", categoryName=" + categoryName + ", categorySubList=" + categorySubList + "]";
	}

   
}