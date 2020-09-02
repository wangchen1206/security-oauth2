package com.cc.oauth.resource2.config;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

import javax.sql.DataSource;
import java.io.IOException;

/**
 * Token 配置
 *
 * @author wangchen
 * @createDate 2020/07/16
 */
@Configuration
public class TokenConfig {

    public static final String JWT_KEY = "ccass";

    @Autowired
    DataSource dataSource;

    @Bean
    public JwtAccessTokenConverter jwtAccessTokenConverter(){
        JwtAccessTokenConverter converter = new JwtAccessTokenConverter();
//        converter.setSigningKey(JWT_KEY);   //设置 对称加密密钥

        //设置非对称加密,资源服务器使用 公钥解密
        ClassPathResource resource = new ClassPathResource("public.cert");
        String publicKey = null;
        try {
            publicKey = IOUtils.toString(resource.getInputStream(), "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        }
        converter.setVerifierKey(publicKey);
        return converter;
    }

    /**
     * 指定token的持久化策略
     * 有JdbcTokenStore，InMemoryTokenStore，JwkTokenStore，RedisTokenStore
     *
     * @param
     * @author wangchen
     * @createDate 2020/7/15
     **/
    @Bean
    public TokenStore tokenStore(RedisConnectionFactory redisConnectionFactory) {
        // redis 管理令牌 此时不需要再连接auth_demo数据库。oauth_server也需要使用redisTokenStore
        return new RedisTokenStore(redisConnectionFactory);
        //需要连接auth_demo数据库做认证
//        return new JdbcTokenStore(dataSource);
//        return new JwtTokenStore(jwtAccessTokenConverter());
    }
}
