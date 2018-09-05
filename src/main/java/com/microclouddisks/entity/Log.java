package com.microclouddisks.entity;

import java.sql.Date;

public class Log {
    private String logid;
    private String logtype;
    private String logname;
    private Date logtime;
    private String logcontent;
    private String usermail;

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

    public String getLogname() {
        return logname;
    }

    public void setLogname(String logname) {
        this.logname = logname;
    }

    public Date getLogtime() {
        return logtime;
    }

    public void setLogtime(Date logtime) {
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
        return "Log{" +
                "logid='" + logid + '\'' +
                ", logtype='" + logtype + '\'' +
                ", logname='" + logname + '\'' +
                ", logtime=" + logtime +
                ", logcontent='" + logcontent + '\'' +
                ", usermail='" + usermail + '\'' +
                '}';
    }
}
