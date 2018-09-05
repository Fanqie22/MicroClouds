package com.microclouddisks.dao;

import com.microclouddisks.entity.diskUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface loginDao {
    // 用于登录查询
    diskUser loginQuery(@Param("usermail") String usermail, @Param("userpassword") String userpassword);
    //用于注册插入数据
    int registerInsert(diskUser users);

    //用于查看邮箱是否已经注册了
    String queryMailById(@Param("usermail") String usermail);
}

