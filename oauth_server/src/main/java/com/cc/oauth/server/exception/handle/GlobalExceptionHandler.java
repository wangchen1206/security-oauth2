package com.cc.oauth.server.exception.handle;

import com.cc.oauth.server.common.CommonResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.BindException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;


/**
 * @author cc
 */
@RestControllerAdvice
public class GlobalExceptionHandler {

    private Logger logger = LoggerFactory.getLogger(this.getClass());


    /**
     * 方法参数校验异常
     */
    @ExceptionHandler(value = MethodArgumentNotValidException.class)
    @ResponseBody
    public CommonResult handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
        logger.error(e.getMessage(), e);
        return CommonResult.build(1,e.getMessage());
    }

    @ExceptionHandler(BindException.class)
    @ResponseBody
    public CommonResult handleBindException(HttpServletRequest request,BindException e) {
        logger.error(e.getMessage(), e);
        //打印校验住的所有的错误信息
        return CommonResult.build(1,e.getMessage());
    }
    /**
     * 全局异常
     *
     * @param request
     * @param e
     * @return
     */
    @ExceptionHandler(value = IllegalStateException.class)
    @ResponseBody
    public CommonResult exception(HttpServletRequest request, Exception e) {
        e.printStackTrace();
        return CommonResult.build(1,e.getMessage());
    }


    private String getRequestInterface(HttpServletRequest request) {
        String reqPath = request.getRequestURI();
        return reqPath.substring(reqPath.lastIndexOf("/") + 1);
    }
}
