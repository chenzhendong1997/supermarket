package com.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.OsUserMapper;
import com.shop.po.OsUser;

/**
 * @Author 陈振东
 */
@Service
public class OsUserService {

    @Autowired
    private OsUserMapper osUserMapper;

    public void insertUser(OsUser user) {
        osUserMapper.insertSelective(user);
    }

    public OsUser selectUser(String loginName, String loginPassword) {
        OsUser user = osUserMapper.selectByTelephone(loginName);
        return user;
    }
}
