package com.cc.oauth.resource2.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;

import javax.sql.DataSource;

/**
 * 资源管理配置类
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
@Configuration
@EnableResourceServer
@EnableGlobalMethodSecurity(prePostEnabled = true)//开启方法级别的安全认证
public class OauthResourceConfig extends ResourceServerConfigurerAdapter {


    @Autowired
    TokenStore tokenStore;

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        resources.resourceId("resource2_api") //指定当前资源id
                .tokenStore(tokenStore); //指定保存token的方式
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                //指定不同的请求方式访问资源所需要的权限，一般查询是read,其余是write
            .antMatchers(HttpMethod.GET,"/**").access("#oauth2.hasScope('read')")
            .antMatchers(HttpMethod.POST,"/**").access("#oauth2.hasScope('write')")
            .antMatchers(HttpMethod.PATCH,"/**").access("#oauth2.hasScope('write')")
            .antMatchers(HttpMethod.DELETE,"/**").access("#oauth2.hasScope('write')")
            .antMatchers(HttpMethod.OPTIONS,"/**").access("#oauth2.hasScope('write')")
            .and()
            .headers().addHeaderWriter(((request, response) -> {
                response.addHeader("Access-Control-Allow-Origin","*");//允许跨域
            if (request.getMethod().equals("OPTIONS")) {//如果是跨域的预检请求，则原封不动向下传达请求头信息
                response.setHeader("Access-Control-Allow-Methods", request.getHeader("Access-Control-Request-Method"));
                response.setHeader("Access-Control-Allow-Headers", request.getHeader("Access-Control-Request-Headers"));
            }
        }));
    }
}
