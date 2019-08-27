package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.ShopCart;
import com.hnit.learning_shop.entity.ShopCartExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShopCartMapper {
    int countByExample(ShopCartExample example);

    int deleteByExample(ShopCartExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ShopCart record);

    int insertSelective(ShopCart record);

    List<ShopCart> selectByExample(ShopCartExample example);

    ShopCart selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ShopCart record, @Param("example") ShopCartExample example);

    int updateByExample(@Param("record") ShopCart record, @Param("example") ShopCartExample example);

    int updateByPrimaryKeySelective(ShopCart record);

    int updateByPrimaryKey(ShopCart record);
}