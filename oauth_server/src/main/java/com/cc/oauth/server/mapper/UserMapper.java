package com.cc.oauth.server.mapper;

import com.cc.oauth.server.entity.SysUser;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <Description>
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
public interface UserMapper {



    @Select("select * from sys_user where username=#{username}")
    @Results({
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "roles",column = "id",javaType = List.class,
                    many = @Many(select = "com.cc.oauth.server.mapper.RoleMapper.findByUid"))
    })
    public SysUser findByUsername(String username);
}
