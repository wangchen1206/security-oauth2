package cn.rzxy.ioc.auth.bean.system;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.apache.commons.collections.CollectionUtils;
import org.assertj.core.util.Lists;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 系统角色实体类
 */
@Data
public class SysRole implements Serializable {

    private Long id;
    /**
     * 角色名称
     */
    private String name;
    /**
     * 角色描述
     */
    private String remark;
    @JsonIgnore
    private Date createDate;
    @JsonIgnore
    private Date updateDate;
    @JsonIgnore
    private Long createUser;
    private Integer status;

    /**
     * 所属部门id
     */
    @JsonIgnore
    private Long departmentId;

    /**
     * 存储当前角色的权限资源对象集合
     * 修改角色时用到
     */
    private List<SysPermission> perList = Lists.newArrayList();
    /**
     * 存储当前角色的权限资源ID集合
     * 修改角色时用到
     */
    private List<Long> perIds = Lists.newArrayList();

    public List<Long> getPerIds() {
        if (CollectionUtils.isNotEmpty(perList)) {
            perIds = Lists.newArrayList();
            for (SysPermission per : perList) {
                perIds.add(per.getId());
            }
        }
        return perIds;
    }
}
