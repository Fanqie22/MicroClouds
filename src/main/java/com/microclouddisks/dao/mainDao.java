package com.microclouddisks.dao;

import com.microclouddisks.entity.folder;
import com.microclouddisks.entity.logs;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface mainDao {

    //查询用户的文件夹列表
    List<folder> folderQuery(@Param("usermail") String usermail, @Param("parent") String parent);

    //插入用户的文件夹
    int folderInsert(folder folder);

    //    删除文件夹
    int deleteFolder(folder folder);

    //查询用户总的已经用了的云盘空间
    double[] usedSpaceQuery(@Param("usermail") String usermail);

    //更新用户已用空间的大小
    int usedSpaceUpdate(@Param("usermail") String usermail, @Param("spacesize") double spacesize);

    //查询
    folder folderQueryById(@Param("folderid") String folderid);

    String folderQueryByidone(@Param("folderid") String folderid);

    //插入用户回收站的信息
    int trashInsert(folder folder);

    //根据folderid删除
    int deleteFileById(@Param("folderid") String folderid);

    //模糊查询
    List<folder> likeQueryByFileName(@Param("foldername") String foldername, @Param("usermail") String usermail);

    //插入日志
    int logInsert(logs log);

    //log query
    List<logs> logsQuery(@Param("usermail") String usermail);
}
