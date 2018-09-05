package com.microclouddisks.service;

import com.microclouddisks.entity.folder;
import com.microclouddisks.entity.logs;

import java.util.List;

public interface mainService {
    //查询用户的文件列表
    List<folder> folderQuery(String usermail, String parent);

    //插入文件夹
    int creatFolder(folder folder);

    //删除文件夹
    int deleteFolder(folder folder);

    //查询用户总的已经用了的云盘空间
    double[] usedSpaceQuery(String usermail);

    //插入回收站的信息
    int trashInsert(folder folder);

    //查询
    folder folderQueryById(String folderid);

    String folderQueryByidone(String folderid);

    //根据folderid删除
    int deleteFileById(String folderid);


    //模糊查询
    List<folder> likeQueryByFileName(String foldername, String usermail);

    //插入日志
    int logInsert(logs log);

    //    logs query
    List<logs> logsQuery(String usermail);
}
