package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.XcTeacher;
import com.hnit.learning_shop.entity.XcTeacherExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface XcTeacherMapper {
    int countByExample(XcTeacherExample example);

    int deleteByExample(XcTeacherExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(XcTeacher record);

    int insertSelective(XcTeacher record);

    List<XcTeacher> selectByExample(XcTeacherExample example);

    XcTeacher selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") XcTeacher record, @Param("example") XcTeacherExample example);

    int updateByExample(@Param("record") XcTeacher record, @Param("example") XcTeacherExample example);

    int updateByPrimaryKeySelective(XcTeacher record);

    int updateByPrimaryKey(XcTeacher record);
}