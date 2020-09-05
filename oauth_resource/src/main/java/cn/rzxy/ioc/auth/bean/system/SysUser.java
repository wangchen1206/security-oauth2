package cn.rzxy.ioc.auth.bean.system;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.collections.CollectionUtils;
import org.assertj.core.util.Lists;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Date;
import java.util.List;

/**
 * 系统用户实体
 */
@Data
@NoArgsConstructor
public class SysUser implements UserDetails {

    private static final long serialVersionUID = 6812285524610245414L;

    private Long id;

    /**
     * 用户名
     */
    private String username;
    /**
     * 密码，加密存储
     */
    private String password;

    /**
     * 帐户是否过期(true(1) 未过期，false(0)已过期)
     * 设置默认值为true，新增用户默认未过期
     * <p>
     * 注意：生成的setter和getter方法没有 `is`
     * setAccountNonExpired
     * getAccountNonExpired
     * 所以前端获取时也不要有 `is`
     */
    private boolean isAccountNonExpired = true;
    /**
     * 帐户是否被锁定(true(1) 未过期，false(0)已过期)
     * 设置默认值为true，新增用户默认未过期
     */
    private boolean isAccountNonLocked = true;
    /**
     * 密码是否过期(true(1) 未过期，false(0)已过期)
     * 设置默认值为true，新增用户默认未过期
     */
    private boolean isCredentialsNonExpired = true;
    /**
     * 帐户是否可用(true(1) 可用，false(0)未删除)
     * 设置默认值为true，新增用户默认未过期
     */
    private boolean isEnabled = true;
    /**
     * 真实姓名
     */
    private String realName;
    /**
     * 手机号
     */
    private String mobile;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 性别(0 女，1 男)
     */
    private Integer sex;
    /**
     * 职位Id
     */
    private Long positionId;
    /**
     * 职位名称
     */
    private String positionName;
    /**
     * 办公室
     */
    private String office;
    /**
     * 办公室电话
     */
    private String officePhone;

    /**
     * 状态 0-启用 1-禁用
     */
    private Integer status;
    /**
     * 头像url
     */
    private String imageUrl;
    @JsonIgnore
    private Date createDate;
    @JsonIgnore
    private Date updateDate;

    /**
     * 角色ID
     */
    private Long roleId;
    /**
     * 角色名称
     */
    private String roleName;
    /**
     * 部门id
     */
    private Long departmentId;
    /**
     * 部门名称
     */
    private String departmentName;


    /**
     * 拥有权限集合
     */
    private Collection<? extends GrantedAuthority> authorities;

    public SysUser(Long userId, String username) {
        this.id = userId;
        this.username = username;
    }

    // 父接口认证方法 start
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.authorities;
    }

    @Override
    public boolean isAccountNonExpired() {
        return this.isAccountNonExpired;
    }

    @Override
    public boolean isAccountNonLocked() {
        return this.isAccountNonLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return this.isCredentialsNonExpired;
    }

    @Override
    public boolean isEnabled() {
        return this.isEnabled;
    }
    // 父接口认证方法 end

    /**
     * 拥有角色集合
     */
    private List<SysRole> roleList = Lists.newArrayList();
    /**
     * 获取所有角色id
     */
    private List<Long> roleIds = Lists.newArrayList();

    public List<Long> getRoleIds() {
        if (CollectionUtils.isNotEmpty(roleList)) {
            roleIds = Lists.newArrayList();
            for (SysRole role : roleList) {
                roleIds.add(role.getId());
            }
        }
        return roleIds;
    }

    private List<SysPermission> permissions = Lists.newArrayList();
}