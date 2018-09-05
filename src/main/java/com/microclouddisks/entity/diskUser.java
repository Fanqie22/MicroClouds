package com.microclouddisks.entity;

import org.springframework.stereotype.Component;

@Component
public class diskUser {
    private String usermail;
    private String username;
    private String userpassword;

    public void setUsermail(String usermail) {
        this.usermail = usermail;
    }

    public String getUsermail() {
        return usermail;
    }

    public String getUsername() {
        return username;
    }

    public String getUserpassword() {
        return userpassword;
    }

    @Override
    public String toString() {
        return "diskUser{" +
                "usermail='" + usermail + '\'' +
                ", username='" + username + '\'' +
                ", userpassword='" + userpassword + '\'' +
                '}';
    }

    public void setUsername(String username) {

        this.username = username;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }
}
