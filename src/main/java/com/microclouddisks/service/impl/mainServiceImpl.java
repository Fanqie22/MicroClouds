package com.microclouddisks.service.impl;

import com.microclouddisks.dao.mainDao;
import com.microclouddisks.entity.folder;
import com.microclouddisks.entity.logs;
import com.microclouddisks.service.mainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class mainServiceImpl implements mainService {
    @Autowired
    private mainDao maindao;

    @Override
    public int creatFolder(folder folder) {
        return maindao.folderInsert(folder);
    }

    @Override
    public double[] usedSpaceQuery(String usermail) {
        return maindao.usedSpaceQuery(usermail);
    }

    @Override
    public int deleteFolder(folder folder) {
        return maindao.deleteFolder(folder);
    }

    @Override
    public List<folder> folderQuery(String usermail, String parent) {
        return maindao.folderQuery(usermail, parent);
    }

    @Override
    public int trashInsert(folder folder) {
        return maindao.trashInsert(folder);
    }

    @Override
    public folder folderQueryById(String folderid) {
        return maindao.folderQueryById(folderid);
    }

    @Override
    public String folderQueryByidone(String folderid) {
        return maindao.folderQueryByidone(folderid);
    }

    @Override
    public int deleteFileById(String folderid) {
        return maindao.deleteFileById(folderid);
    }

    @Override
    public List<folder> likeQueryByFileName(String foldername, String usermail) {
        return maindao.likeQueryByFileName(foldername, usermail);
    }

    @Override
    public int logInsert(logs log) {
        return maindao.logInsert(log);
    }

    @Override
    public List<logs> logsQuery(String usermail) {
        return maindao.logsQuery(usermail);
    }
}
