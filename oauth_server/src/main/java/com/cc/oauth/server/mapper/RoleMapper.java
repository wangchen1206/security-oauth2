package com.cc.oauth.server.mapper;

import com.cc.oauth.server.entity.SysRole;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface RoleMapper {

    @Select("select r.id,r.role_name roleName,r.role_desc roleDesc from sys_role r,sys_user_role ur where r.id = ur.rid and ur.uid = #{uid}")
    public List<SysRole> findByUid(Integer uid);
}
