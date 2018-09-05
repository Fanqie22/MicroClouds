package com.microclouddisks.service.impl;

import com.microclouddisks.dao.loginDao;
import com.microclouddisks.entity.diskUser;
import com.microclouddisks.service.loginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class loginServiceImpl implements loginService {

    @Autowired
    private loginDao logindao;

    @Override
    public diskUser loginCheck(String usermail, String userpassword) {
        System.out.println("------> ServiceImpl : loginCheck()");
        return logindao.loginQuery(usermail, userpassword);
    }

    @Override
    public int register(diskUser users) {
        System.out.println("------> ServiceImpl : register()");
        return logindao.registerInsert(users);
    }

    @Override
    public String queryMailById(String usermail) {
        String bools = logindao.queryMailById(usermail);
        if (bools != null) {
            return "0";
        } else {
            return "1";
        }
    }
}
