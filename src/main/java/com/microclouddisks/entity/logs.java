package com.microclouddisks.entity;

public class logs {
    private String logid;
    private String logtype;
    private String sizes;
    private String logtime;
    private String logcontent;
    private String usermail;
    private String filename;
    private String fileicon;

    public String getFileicon() {
        return fileicon;
    }

    public void setFileicon(String fileicon) {
        this.fileicon = fileicon;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getLogid() {
        return logid;
    }

    public void setLogid(String logid) {
        this.logid = logid;
    }

    public String getLogtype() {
        return logtype;
    }

    public void setLogtype(String logtype) {
        this.logtype = logtype;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    public String getLogtime() {
        return logtime;
    }

    public void setLogtime(String logtime) {
        this.logtime = logtime;
    }

    public String getLogcontent() {
        return logcontent;
    }

    public void setLogcontent(String logcontent) {
        this.logcontent = logcontent;
    }

    public String getUsermail() {
        return usermail;
    }

    public void setUsermail(String usermail) {
        this.usermail = usermail;
    }

    @Override
    public String toString() {
        return "logs{" +
                "logid='" + logid + '\'' +
                ", logtype='" + logtype + '\'' +
                ", sizes='" + sizes + '\'' +
                ", logtime='" + logtime + '\'' +
                ", logcontent='" + logcontent + '\'' +
                ", usermail='" + usermail + '\'' +
                '}';
    }
}
