package com.microclouddisks.entity;

import org.springframework.stereotype.Component;

@Component
public class folder {
    private String folderid;
    private String foldername;
    private String usermail;
    private String updatetime;
    private String sizes;
    private String filetype;
    private String parent;
    private int num;
    private String filepath;
    private String nowfolder;
    private String icon;
    private String s3url;

    public String getS3url() {
        return s3url;
    }

    public void setS3url(String s3url) {
        this.s3url = s3url;
    }
//    private String s3url;

//    public String getS3url() {
//        return s3url;
//    }

//    public void setS3url(String s3url) {
//        this.s3url = s3url;
//    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getFolderid() {
        return folderid;
    }

    public void setFolderid(String folderid) {
        this.folderid = folderid;
    }

    public String getFoldername() {
        return foldername;
    }

    public void setFoldername(String foldername) {
        this.foldername = foldername;
    }

    public String getUsermail() {
        return usermail;
    }

    public void setUsermail(String usermail) {
        this.usermail = usermail;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public String getNowfolder() {
        return nowfolder;
    }

    public void setNowfolder(String nowfolder) {
        this.nowfolder = nowfolder;
    }

    @Override
    public String toString() {
        return "folder{" +
                "folderid='" + folderid + '\'' +
                ", foldername='" + foldername + '\'' +
                ", usermail='" + usermail + '\'' +
                ", updatetime='" + updatetime + '\'' +
                ", sizes=" + sizes +
                ", filetype='" + filetype + '\'' +
                ", parent='" + parent + '\'' +
                ", num=" + num +
                ", filepath='" + filepath + '\'' +
                ", nowfolder='" + nowfolder + '\'' +
                ", icon='" + icon + '\'' +
                '}';
    }
}
