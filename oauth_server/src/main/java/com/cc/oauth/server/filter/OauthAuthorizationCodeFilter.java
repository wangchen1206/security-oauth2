package com.cc.oauth.server.filter;

import com.alibaba.fastjson.JSON;
import com.cc.oauth.server.common.CommonResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Description
 *
 * @author wangchen
 * @createDate 2020/09/01
 */
@Order(1)
@WebFilter(urlPatterns = "/oauth/authorize", filterName = "oauthAuthorizationCodeFilter")
@Slf4j
public class OauthAuthorizationCodeFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
            ServletException {
        log.info("[oauthAuthorizationCodeFilter] 进入 OauthAuthorizationCodeFilter ...");
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        //是否为用户手动授权方法，此时对应的url AuthorizationEndpoint.approveOrDeny()方法,若为用户手动授权，直接放行。
        // 这个如果所有的第三方都是autoapprove=true,则不需要这一步
//        if (request.getParameter("user_oauth_approval")!=null){
//            log.info("[oauthAuthorizationCodeFilter] 用户手动授权请求，直接放行");
//            chain.doFilter(request, response);
        if (httpServletRequest.getMethod().equalsIgnoreCase(HttpMethod.POST.name())){
            log.info("[oauthAuthorizationCodeFilter] 用户手动授权请求，直接放行");
            chain.doFilter(request, response);
        }else{
            log.info("[oauthAuthorizationCodeFilter] [授权请求] 检查请求参数");
            HttpServletResponse httpServletResponse = (HttpServletResponse) response;
            httpServletResponse.setCharacterEncoding("UTF-8");
            httpServletResponse.setHeader("Content-Type", "application/json");
            String state = httpServletRequest.getParameter("state");
            //查看是否存在参数state
            if (!StringUtils.isEmpty(state)) {
                log.info("[oauthAuthorizationCodeFilter] 请求参数state不为空，放行");
                chain.doFilter(request, response);
            }else{
                log.info("[oauthAuthorizationCodeFilter] 请求参数state为空，直接拒绝");
                CommonResult commonResult = CommonResult.build(1, "请求参数state不能为空");
                PrintWriter writer = httpServletResponse.getWriter();
                try {
                    writer.write(commonResult.toJsonString());
                    writer.flush();
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    writer.close();
                }
            }
        }

    }
}
