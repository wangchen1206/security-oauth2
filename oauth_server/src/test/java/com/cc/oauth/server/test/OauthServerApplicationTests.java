package com.cc.oauth.server.test;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * <Description>
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
@SpringBootTest
public class OauthServerApplicationTests {

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Test
    void test(){
        String encode = passwordEncoder.encode("111111");
        System.out.println("password is: "+encode);
    }
}
