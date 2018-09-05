package com.microclouddisks.entity;

public class folderList {
    private String folderid;
    private String foldername;
    private String usermail;
    private String updatetime;
    private double sizes;
    private int num;
    private String filetype;

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

    public double getSizes() {
        return sizes;
    }

    public void setSizes(double sizes) {
        this.sizes = sizes;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    @Override
    public String toString() {
        return "folderList{" +
                "folderid='" + folderid + '\'' +
                ", foldername='" + foldername + '\'' +
                ", usermail='" + usermail + '\'' +
                ", updatetime='" + updatetime + '\'' +
                ", sizes=" + sizes +
                ", num=" + num +
                ", filetype='" + filetype + '\'' +
                '}';
    }
}
