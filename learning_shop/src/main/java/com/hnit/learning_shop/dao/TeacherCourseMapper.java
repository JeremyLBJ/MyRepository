package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.TeacherCourseExample;
import com.hnit.learning_shop.entity.TeacherCourseKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TeacherCourseMapper {
    int countByExample(TeacherCourseExample example);

    int deleteByExample(TeacherCourseExample example);

    int deleteByPrimaryKey(TeacherCourseKey key);

    int insert(TeacherCourseKey record);

    int insertSelective(TeacherCourseKey record);

    List<TeacherCourseKey> selectByExample(TeacherCourseExample example);

    int updateByExampleSelective(@Param("record") TeacherCourseKey record, @Param("example") TeacherCourseExample example);

    int updateByExample(@Param("record") TeacherCourseKey record, @Param("example") TeacherCourseExample example);
}