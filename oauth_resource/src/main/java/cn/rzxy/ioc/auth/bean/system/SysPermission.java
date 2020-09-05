package cn.rzxy.ioc.auth.bean.system;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 权限/菜单实体类
 */
@Data
public class SysPermission implements Serializable {

    private static final long serialVersionUID = -4400217207305857575L;

    private Long id;

    /**
     * 父资源id,给它初始值 0
     * 新增和修改页面上默认的父资源id
     */
    private Long parentId = 0L ;
    /**
     * 用于新增和修改页面上默认的根菜单名称
     */
    private String parentName = "一级菜单";

    private String name;
    private String code;
    private String url;
    private String router;
    /**
     * 菜单：1，按钮：2
     */
    private Integer type;
    private String icon;
    @JsonIgnore
    private String remark;
    private Integer status;
    private Integer orderNo;

    @JsonIgnore
    private Date createDate;
    @JsonIgnore
    private Date updateDate;


    /**
     * 所有子权限对象集合
     * 左侧菜单渲染时要用
     */
    private List<SysPermission> children;

    /**
     * 所有子权限 URL 集合
     * 左侧菜单渲染时要用
     */
    private List<String> childrenUrl;
}
