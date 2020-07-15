package com.cc.oauth.resource.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/product")
public class ProductController {
    @GetMapping("/test1")
    @PreAuthorize("hasAuthority('read')")
    public String findAll() {
        return "查询产品列表成功！";
    }

    @PostMapping("/test2")
    @PreAuthorize("hasAuthority('write')")
    public String findAll1() {
        return "查询产品列表成功！";
    }
}