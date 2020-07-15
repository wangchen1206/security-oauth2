package com.cc.oauth.server.service.impl;

import com.cc.oauth.server.mapper.UserMapper;
import com.cc.oauth.server.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * <Description>
 *
 * @author wangchen
 * @createDate 2020/07/15
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return this.userMapper.findByUsername(username);
    }
}
