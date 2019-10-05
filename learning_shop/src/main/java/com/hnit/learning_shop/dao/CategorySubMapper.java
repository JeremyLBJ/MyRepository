package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.CategorySub;
import com.hnit.learning_shop.entity.CategorySubExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CategorySubMapper {
	
	
	List<CategorySub> selectByCid(int cid);
    int countByExample(CategorySubExample example);

    int deleteByExample(CategorySubExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CategorySub record);

    int insertSelective(CategorySub record);

    List<CategorySub> selectByExample(CategorySubExample example);

    CategorySub selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CategorySub record, @Param("example") CategorySubExample example);

    int updateByExample(@Param("record") CategorySub record, @Param("example") CategorySubExample example);

    int updateByPrimaryKeySelective(CategorySub record);

    int updateByPrimaryKey(CategorySub record);
}