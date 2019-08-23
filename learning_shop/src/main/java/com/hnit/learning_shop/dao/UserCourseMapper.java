package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.UserCourseExample;
import com.hnit.learning_shop.entity.UserCourseKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserCourseMapper {
    int countByExample(UserCourseExample example);

    int deleteByExample(UserCourseExample example);

    int deleteByPrimaryKey(UserCourseKey key);

    int insert(UserCourseKey record);

    int insertSelective(UserCourseKey record);

    List<UserCourseKey> selectByExample(UserCourseExample example);

    int updateByExampleSelective(@Param("record") UserCourseKey record, @Param("example") UserCourseExample example);

    int updateByExample(@Param("record") UserCourseKey record, @Param("example") UserCourseExample example);
}