package com.microclouddisks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminController {

    @RequestMapping(value = "/admins")
    public String admin(){
        System.out.println("adminController !");
        return "admin";
    }
}
