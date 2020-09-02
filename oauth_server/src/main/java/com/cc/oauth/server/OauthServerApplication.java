package com.cc.oauth.server;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

/**
 * <Description>
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
@SpringBootApplication
@MapperScan("com.cc.oauth.server.mapper")
@ServletComponentScan
public class OauthServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(OauthServerApplication.class,args);
    }
}
