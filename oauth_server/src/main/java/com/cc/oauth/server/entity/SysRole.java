package com.cc.oauth.server.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.springframework.security.core.GrantedAuthority;

/**
 * <Description>
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
@Data
public class SysRole implements GrantedAuthority {

    private Integer id;
    private String roleName;
    private String roleDesc;


    @JsonIgnore //此属性不做标记
    @Override
    public String getAuthority() {
        return this.roleName;
    }
}
