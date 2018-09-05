package com.microclouddisks.service;

import com.microclouddisks.entity.diskUser;

public interface loginService {
    //    登录服务接口
    diskUser loginCheck(String usermail, String userpassword);
    //注册接口
    int register(diskUser users);
    //用于查看邮箱是否已经注册了
    String queryMailById(String usermail);
}
