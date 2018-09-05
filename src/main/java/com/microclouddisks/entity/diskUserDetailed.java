package com.microclouddisks.entity;

import org.springframework.stereotype.Component;

@Component
public class diskUserDetailed {
    private String usermail;
    private String userphone;
    private String usericon;
    private String usersex;
    private String userbirth;
    private String useraddress;
    private String userlabel;
    private String useredu;

    public String getUsermail() {
        return usermail;
    }

    public String getUserphone() {
        return userphone;
    }

    public String getUsericon() {
        return usericon;
    }

    public String getUsersex() {
        return usersex;
    }

    public String getUserbirth() {
        return userbirth;
    }

    public String getUseraddress() {
        return useraddress;
    }

    public String getUserlabel() {
        return userlabel;
    }

    public String getUseredu() {
        return useredu;
    }

    public void setUsermail(String usermail) {
        this.usermail = usermail;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public void setUsericon(String usericon) {
        this.usericon = usericon;
    }

    public void setUsersex(String usersex) {
        this.usersex = usersex;
    }

    public void setUserbirth(String userbirth) {
        this.userbirth = userbirth;
    }

    public void setUseraddress(String useraddress) {
        this.useraddress = useraddress;
    }

    public void setUserlabel(String userlabel) {
        this.userlabel = userlabel;
    }

    public void setUseredu(String useredu) {
        this.useredu = useredu;
    }

    @Override
    public String toString() {
        return "diskUserDetailed{" +
                "usermail='" + usermail + '\'' +
                ", userphone='" + userphone + '\'' +
                ", usericon='" + usericon + '\'' +
                ", usersex='" + usersex + '\'' +
                ", userbirth='" + userbirth + '\'' +
                ", useraddress='" + useraddress + '\'' +
                ", userlabel='" + userlabel + '\'' +
                ", useredu='" + useredu + '\'' +
                '}';
    }
}
