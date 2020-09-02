package com.cc.oauth.server.exception;

import com.cc.oauth.server.common.CommonResult;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.common.exceptions.*;
import org.springframework.security.oauth2.provider.ClientRegistrationException;
import org.springframework.security.oauth2.provider.error.WebResponseExceptionTranslator;
import org.springframework.stereotype.Component;

/**
 * OAUTH 2 异常翻译
 * <p>
 * 对 OAuth2Exception 异常的响应数据进行统一处理，默认是 xml 响应，不友好且不统一。 具体是实现{@link WebResponseExceptionTranslator}接口的方法，
 * 可以自定义返回的数据格式， 这里使用 Spring 提供的{@link ResponseEntity}构建响应数据体
 * </p>
 *
 */
@Slf4j
@Component("customWebRcesponseExceptionTranslator")
@SuppressWarnings("all")
public class CustomWebResponseExceptionTranslator implements
    WebResponseExceptionTranslator {

  @Override
  public ResponseEntity<CommonResult> translate(Exception e) {
    ResponseEntity.BodyBuilder status = ResponseEntity.status(HttpStatus.OK);
    String message = "认证失败";
    log.error(message, e);
    if (e instanceof UnsupportedGrantTypeException) {
      message = "不支持该认证类型";
      return status.body(CommonResult.build(1000,message));
    }
    if (e instanceof InvalidTokenException
        && StringUtils.containsIgnoreCase(e.getMessage(), "Invalid refresh token (expired)")) {
      message = "刷新令牌已过期，请重新登录";
      return status.body(CommonResult.build(1001,message));
    }
    if (e instanceof InvalidScopeException) {
      message = "不是有效的scope值";
      return status.body(CommonResult.build(1002,message));
    }
    if (e instanceof InvalidGrantException) {
      if (StringUtils.containsIgnoreCase(e.getMessage(), "Invalid refresh token")) {
        message = "refresh token无效";
        return status.body(CommonResult.build(1003,message));
      }
      if (StringUtils.containsIgnoreCase(e.getMessage(), "locked")) {
        message = "用户已被锁定，请联系管理员";
        return status.body(CommonResult.build(1004,message));
      }
      if (StringUtils.containsIgnoreCase(e.getMessage(), "Invalid authorization code")) {
        message = "无效的授权码";
        return status.body(CommonResult.build(1007,message));
      }
      message = "用户名或密码错误";
      return status.body(CommonResult.build(1005,message));
    }
    if (e instanceof BadClientCredentialsException) {
       message = "无效的客户端用户或密码";
      return status.body(CommonResult.build(1008,message));
    }
    if (e instanceof RedirectMismatchException && StringUtils.containsIgnoreCase(e.getMessage(),"Invalid redirect")){
      message = "请求的redirect_uri无效";
      return status.body(CommonResult.build(1009,message));
    }
    return status.body(CommonResult.build(1006,message));
  }
}