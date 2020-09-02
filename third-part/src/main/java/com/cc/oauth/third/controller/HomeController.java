package com.cc.oauth.third.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Description
 *
 * @author wangchen
 * @createDate 2020/09/02
 */
@Controller
@RequestMapping("/home")
@Slf4j
public class HomeController {

    private static final String access_token_url = "http://localhost:9002/oauth/token";
    private static final String product_url = "http://localhost:9003/product/test1";

    @Autowired
    private RestTemplate restTemplate;

    @GetMapping("/login")
    public String login(){
        return "login";
    }



    @RequestMapping("/callback")
    @ResponseBody
    public String callback(@RequestParam("state") String state,@RequestParam("code") String code){
        log.info("the state is : {}",state);
        HttpHeaders headers = new HttpHeaders();
//  请勿轻易改变此提交方式，大部分的情况下，提交方式都是表单提交
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
        MultiValueMap<String,String> params = new LinkedMultiValueMap<>();
        params.add("grant_type","authorization_code");
        params.add("client_id","client1");
        params.add("client_secret","111111");
        params.add("code",code);
        HttpEntity<MultiValueMap> httpEntity = new HttpEntity<>(params,headers);
        ResponseEntity<Map> mapResponseEntity = restTemplate.postForEntity(access_token_url, httpEntity, Map.class);
        int status = mapResponseEntity.getStatusCode().value();
        if (status!=200){
            log.info("error");
            throw new IllegalStateException("请求access_token失败");
        }
        Map result = mapResponseEntity.getBody();
        //访问查询商品接口
        HttpHeaders requestHeaders = new HttpHeaders();
        requestHeaders.add("Authorization", "Bearer "+result.get("access_token"));
        HttpEntity httpEntity1 = new HttpEntity(null,requestHeaders);
        ResponseEntity<String> responseEntity = restTemplate.exchange(product_url, HttpMethod.GET, httpEntity1, String.class);
        log.info(responseEntity.toString());
        return responseEntity.getBody();
    }
}
