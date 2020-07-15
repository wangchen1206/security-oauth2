package com.cc.oauth.resource;

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
@MapperScan("com.cc.oauth.resource.mapper")
public class OauthResourceApplication {

    public static void main(String[] args) {
        SpringApplication.run(OauthResourceApplication.class,args);
    }
}
