package com.cc.oauth.resource2;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * <Description>
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
@SpringBootApplication
@MapperScan("com.cc.oauth.resource2.mapper")
public class OauthResource2Application {

    public static void main(String[] args) {
        SpringApplication.run(OauthResource2Application.class,args);
    }
}
