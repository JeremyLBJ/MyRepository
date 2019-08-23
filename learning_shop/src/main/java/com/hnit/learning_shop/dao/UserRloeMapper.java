package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.UserRloeExample;
import com.hnit.learning_shop.entity.UserRloeKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserRloeMapper {
    int countByExample(UserRloeExample example);

    int deleteByExample(UserRloeExample example);

    int deleteByPrimaryKey(UserRloeKey key);

    int insert(UserRloeKey record);

    int insertSelective(UserRloeKey record);

    List<UserRloeKey> selectByExample(UserRloeExample example);

    int updateByExampleSelective(@Param("record") UserRloeKey record, @Param("example") UserRloeExample example);

    int updateByExample(@Param("record") UserRloeKey record, @Param("example") UserRloeExample example);
}