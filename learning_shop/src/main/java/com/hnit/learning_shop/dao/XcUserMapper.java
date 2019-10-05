package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.entity.XcUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface XcUserMapper {
    int countByExample(XcUserExample example);

    int deleteByExample(XcUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(XcUser record);

    int insertSelective(XcUser record);

    List<XcUser> selectByExample(XcUserExample example);

    XcUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") XcUser record, @Param("example") XcUserExample example);

    int updateByExample(@Param("record") XcUser record, @Param("example") XcUserExample example);

    int updateByPrimaryKeySelective(XcUser record);

    int updateByPrimaryKey(XcUser record);
}