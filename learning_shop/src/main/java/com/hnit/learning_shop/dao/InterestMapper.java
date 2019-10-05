package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.Interest;
import com.hnit.learning_shop.entity.InterestExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface InterestMapper {
    int countByExample(InterestExample example);

    int deleteByExample(InterestExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Interest record);

    int insertSelective(Interest record);

    List<Interest> selectByExample(InterestExample example);

    Interest selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Interest record, @Param("example") InterestExample example);

    int updateByExample(@Param("record") Interest record, @Param("example") InterestExample example);

    int updateByPrimaryKeySelective(Interest record);

    int updateByPrimaryKey(Interest record);
}