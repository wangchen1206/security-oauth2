package com.cc.oauth.third;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/**
 * Description
 *
 * @author wangchen
 * @createDate 2020/09/02
 */
@SpringBootApplication
public class ThirdPartApplication {
    public static void main(String[] args) {
        SpringApplication.run(ThirdPartApplication.class,args);
    }

    @Bean
    public RestTemplate restTemplate(){
        return new RestTemplate();
    }
}
