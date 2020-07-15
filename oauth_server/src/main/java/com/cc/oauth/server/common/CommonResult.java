package com.cc.oauth.server.common;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class CommonResult<T> implements Serializable{
//
//    /**
//     * 系统状态码，标识请求成功与否，如 [1:成功；-1:失败]
//     */
//    private Integer status = 1;

    /**
     * 业务状态码 200为返回正常， 其它code均为请求错误 ，给出明确错误码，更好的应对业务异常；
     */
    private Integer status;

    /**
     * 错误消息，与业务状态码相对应，更具体的描述异常信息
     */
    private String msg;

    /**
     * 返回数据
     */
    private T body;

    /**
     * 时间戳
     */
    private Date timeStamp = new Date();

    public CommonResult() {
    }
    public CommonResult(T body) {
        this.status = 200;
        this.msg = "OK";
        this.body = body;
    }
    public CommonResult(String message, T body) {
        this.status = 200;
        this.msg = message;
        this.body = body;
    }

    public CommonResult(Integer code, String message, T body) {
        this.status = code;
        this.msg = message;
        this.body = body;
    }

    public static CommonResult ok() {
        return new CommonResult(null);
    }
    public static CommonResult ok(String message) {
        return new CommonResult(message, null);
    }
    public static CommonResult ok(Object data) {
        return new CommonResult(data);
    }
    public static CommonResult ok(String message, Object data) {
        return new CommonResult(message, data);
    }

    public static CommonResult build(Integer code, String message) {
        return new CommonResult(code, message, null);
    }

    public static CommonResult build(Integer code, String message, Object data) {
        return new CommonResult(code, message, data);
    }

    public String toJsonString() {
        return JSON.toJSONString(this);
    }


    /**
     * JSON字符串转成 CommonResult 对象
     * @param json
     * @return
     */
    public static CommonResult format(String json) {
        try {
            return JSON.parseObject(json, CommonResult.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
