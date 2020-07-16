package com.cc.oauth.server.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.approval.ApprovalStore;
import org.springframework.security.oauth2.provider.approval.JdbcApprovalStore;
import org.springframework.security.oauth2.provider.client.JdbcClientDetailsService;
import org.springframework.security.oauth2.provider.code.AuthorizationCodeServices;
import org.springframework.security.oauth2.provider.code.JdbcAuthorizationCodeServices;
import org.springframework.security.oauth2.provider.error.WebResponseExceptionTranslator;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;
import org.springframework.security.oauth2.provider.token.store.KeyStoreKeyFactory;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

import javax.sql.DataSource;

/**
 * OAuth2授权配置类
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
@Configuration
@EnableAuthorizationServer
public class OauthServerConfig extends AuthorizationServerConfigurerAdapter {

    public static final String JWT_KEY = "ccass";
    @Autowired
    private DataSource dataSource;
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private TokenStore tokenStore;
    @Autowired
    private WebResponseExceptionTranslator customWebRcesponseExceptionTranslator;


    /**
     * JWTAccesstokenConverter
     *
     * @param
     * @author wangchen
     * @createDate 2020/7/16
     **/
    @Bean
    public JwtAccessTokenConverter jwtAccessTokenConverter(){
        JwtAccessTokenConverter jwtAccessTokenConverter = new JwtAccessTokenConverter();
        //对称加密，资源服务器也要使用此key进行解密，来校验令牌合法性
        //jwtAccessTokenConverter.setSigningKey(JWT_KEY); //JWT 密钥
        //非对称加密
        KeyStoreKeyFactory keyStoreKeyFactory =new KeyStoreKeyFactory(
                new ClassPathResource("oauth2-jwt.jks"),"ccayss".toCharArray());
        jwtAccessTokenConverter.setKeyPair(keyStoreKeyFactory.getKeyPair("oauth2-jwt"));
        return jwtAccessTokenConverter;
    }



    /**
     * 从数据库中查询客户端信息
     *
     * @param
     * @author wangchen
     * @createDate 2020/7/15
     **/
    @Bean
    public JdbcClientDetailsService clientDetailsService(){
        JdbcClientDetailsService jdbcClientDetailsService = new JdbcClientDetailsService(dataSource);
        jdbcClientDetailsService.setPasswordEncoder(passwordEncoder);
        return jdbcClientDetailsService;
    }

    /**
     * Token保存策略
     *
     * @param
     * @author wangchen
     * @createDate 2020/7/15
     **/
    @Bean
    public TokenStore tokenStore(RedisConnectionFactory redisConnectionFactory){
        //使用redis保存token,需和资源服务器保存token的方式一致
//        return new RedisTokenStore(redisConnectionFactory);
//        return new JdbcTokenStore(dataSource);
        return new JwtTokenStore(jwtAccessTokenConverter());
    }

    /**
     * 授权信息保存策略
     *
     * @param 
     * @author wangchen 
     * @createDate 2020/7/15
     **/
    @Bean
    public ApprovalStore approvalStore(){
        return new JdbcApprovalStore(dataSource);
    }

    /**
     * 授权码模式专用对象
     *
     * @param
     * @author wangchen
     * @createDate 2020/7/15
     **/
    @Bean
    public AuthorizationCodeServices authorizationCodeServices(){
        return new JdbcAuthorizationCodeServices(dataSource);
    }


    /**
     * 指定客户端登录信息来源
     *
     * @param [clients]
     * @author wangchen 
     * @createDate 2020/7/15
     **/
    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
        clients.withClientDetails(clientDetailsService());

        // 从内存中取数据
//        clients.inMemory()
//                .withClient("baidu")
//                .secret(passwordEncoder.encode("12345"))
//                .resourceIds("product_api")
//                .authorizedGrantTypes(
//                        "authorization_code",
//                        "password",
//                        "client_credentials",
//                        "implicit",
//                        "refresh_token"
//                )// 该client允许的授权类型 authorization_code,password,refresh_token,implicit,client_credentials
//                .scopes("read", "write")// 允许的授权范围
//                .autoApprove(false)
//                //加上验证回调地址
//                .redirectUris("http://www.baidu.com");
    }

    /**
     * 检测token策略
     *
     * @param [security]
     * @author wangchen
     * @createDate 2020/7/15
     **/
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
        security.allowFormAuthenticationForClients()    //允许form表单客户端进行认证，允许客户端使用client_id和client_secret获取token
            .checkTokenAccess("isAuthenticated()")      //通过验证返回token信息
            .tokenKeyAccess("permitAll()")              //获取token请求不进行拦截
            .passwordEncoder(passwordEncoder);
    }

    /**
     * OAuth2的主配置信息
     *
     * @param [endpoints]
     * @author wangchen
     * @createDate 2020/7/15
     **/
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        endpoints
                .approvalStore(approvalStore())
                //password模式需要这个authenticationManager实例
                .authenticationManager(authenticationManager)
                //自定义认证异常处理
                .exceptionTranslator(customWebRcesponseExceptionTranslator)
                //授权码管理策略，产生的授权码放到oauth_code表中，如果这个授权码已经使用，则表中对应的数据就会删除
                .authorizationCodeServices(authorizationCodeServices())
                //token保存策略
                .tokenStore(tokenStore)
                //JWTAccessTokenConverter
                .accessTokenConverter(jwtAccessTokenConverter())
                .userDetailsService(userDetailsService);
    }
}
