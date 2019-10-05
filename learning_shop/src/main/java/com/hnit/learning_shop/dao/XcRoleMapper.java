package com.hnit.learning_shop.dao;

import com.hnit.learning_shop.entity.XcRole;
import com.hnit.learning_shop.entity.XcRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface XcRoleMapper {
    int countByExample(XcRoleExample example);

    int deleteByExample(XcRoleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(XcRole record);

    int insertSelective(XcRole record);

    List<XcRole> selectByExample(XcRoleExample example);

    XcRole selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") XcRole record, @Param("example") XcRoleExample example);

    int updateByExample(@Param("record") XcRole record, @Param("example") XcRoleExample example);

    int updateByPrimaryKeySelective(XcRole record);

    int updateByPrimaryKey(XcRole record);

	List<XcRole> findOtherRolesByUid(Integer id);
}