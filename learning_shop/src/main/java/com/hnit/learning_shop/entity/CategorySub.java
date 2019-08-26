package com.hnit.learning_shop.entity;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(value = {"handler"})
public class CategorySub implements Serializable {
    private Integer id;

    private Integer cid;

    private String subCatName;

    private List<CourseBase> courseList;
    
    
    
   

	public List<CourseBase> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<CourseBase> courseList) {
		this.courseList = courseList;
	}

	@Override
	public String toString() {
		return "CategorySub [id=" + id + ", cid=" + cid + ", subCatName=" + subCatName + ", courseList=" + courseList
				+ "]";
	}

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

    public String getSubCatName() {
        return subCatName;
    }

    public void setSubCatName(String subCatName) {
        this.subCatName = subCatName == null ? null : subCatName.trim();
    }

   
}