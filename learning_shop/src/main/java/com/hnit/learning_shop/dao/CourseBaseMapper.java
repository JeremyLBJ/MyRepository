package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.entity.CourseBaseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseBaseMapper {
    int countByExample(CourseBaseExample example);

    int deleteByExample(CourseBaseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CourseBase record);

    int insertSelective(CourseBase record);

    List<CourseBase> selectByExample(CourseBaseExample example);

    CourseBase selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CourseBase record, @Param("example") CourseBaseExample example);

    int updateByExample(@Param("record") CourseBase record, @Param("example") CourseBaseExample example);

    int updateByPrimaryKeySelective(CourseBase record);

    int updateByPrimaryKey(CourseBase record);
}