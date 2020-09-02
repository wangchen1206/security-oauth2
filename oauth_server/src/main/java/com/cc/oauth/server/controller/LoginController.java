package com.cc.oauth.server.controller;

import com.cc.oauth.server.common.CommonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.exceptions.OAuth2Exception;
import org.springframework.security.oauth2.provider.endpoint.AuthorizationEndpoint;
import org.springframework.security.oauth2.provider.endpoint.TokenEndpoint;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * 自己封装Oauth登录
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
@RestController
public class LoginController {

    @Autowired
    TokenEndpoint tokenEndpoint;

    @Autowired
    AuthorizationEndpoint authorizationEndpoint;


    /**
     * 自定义端点错误处理
     * @param request
     * @return
     */
    @RequestMapping("/oauth/error")
    public CommonResult handleError(HttpServletRequest request) {
        Object error = request.getAttribute("error");
        if (error instanceof OAuth2Exception) {
            OAuth2Exception oauthError = (OAuth2Exception) error;
            return CommonResult.build(oauthError.getHttpErrorCode(),oauthError.getLocalizedMessage());
        }
        else if(error instanceof CommonResult) {
            return (CommonResult)error;
        }
        return CommonResult.build(500,"未知错误",error);
    }


}
