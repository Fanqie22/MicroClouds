package com.microclouddisks.controller;

import com.microclouddisks.entity.diskUser;
import com.microclouddisks.entity.folder;
import com.microclouddisks.entity.logs;
import com.microclouddisks.functions.sendMail;
import com.microclouddisks.service.loginService;
import com.microclouddisks.service.mainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

//import com.microclouddisks.functions.AWS_S3;

@Controller
public class loginController {

    @Autowired
    private loginService loginservice;
    @Autowired
    private mainService mainservice;

    @RequestMapping(value = "/login")
    public String login(HttpSession session, HttpServletRequest request, Model model) {
        String usermail = request.getParameter("usermail");
        String userpasword = request.getParameter("userpassword");
        if (usermail == null || usermail.length() == 0) {
            return "login";
        } else {
            diskUser users = loginservice.loginCheck(usermail, userpasword);
            if (users == null) {
                return "login";
            } else {
                session.setAttribute("diskuser", users);
                model.addAttribute("diskuser", users);
                return "redirect:main";
            }

        }
    }

    @RequestMapping(value = "/register")
    public String register(HttpSession session, HttpServletRequest request) throws IOException {
        diskUser users = new diskUser();
        String usermail = request.getParameter("usermail");
        String userpassword = request.getParameter("userpassword");
        users.setUsermail(usermail);
        users.setUserpassword(userpassword);
        users.setUsername("MicroCloudDisksUser");
        int bools = loginservice.register(users);
        if (bools == 1) {
            folder folder = new folder();
            Date date = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time = formatter.format(date);
            folder.setFolderid(users.getUsermail() + "-" + time);
            folder.setFoldername("我的文件夹");
            folder.setSizes("-");
            folder.setNum(0);
            folder.setFiletype("folder");
            folder.setParent(usermail);
            folder.setFilepath(usermail + File.separator + "我的文件夹");
            folder.setUpdatetime(time);
            folder.setUsermail(users.getUsermail());
            folder.setIcon("img" + File.separator + "folder6.jpg");
            mainservice.creatFolder(folder);
            session.setAttribute("diskuser", users);


            //创建用户文件夹
            File file = new File("");
            String userFilePath = file.getCanonicalFile() + File.separator + "UsersFiles" + File.separator + usermail + File.separator;
            file = new File(userFilePath + "我的文件夹");
            file.mkdirs();
            System.out.println("register : " + userFilePath);

            logs logs = new logs();
            logs.setLogid(usermail + "-" + time);
            logs.setFileicon("img/folder6.jpg");
            logs.setFilename("我的文件夹");
            logs.setSizes("-");
            logs.setLogcontent("用户 " + usermail + " 注册成功,初始化云盘 : 我的文件夹");
            logs.setLogtime(time);
            logs.setLogtype("创建文件夹");
            logs.setUsermail(usermail);
            mainservice.logInsert(logs);

            return "redirect:main";
        } else {
            return "login";
        }
    }

    @RequestMapping(value = "/mailcheck")
    @ResponseBody
    public String mailcheck(String mail, Model model) {
        sendMail sendMail = new sendMail();
        int randNum = 1 + (int) (Math.random() * ((999999 - 1) + 1));
        String codes = String.valueOf(randNum);
        boolean bool = sendMail.sendmail(codes, mail);
        model.addAttribute("xx", codes);
        System.out.println("邮件已经成功发送!");
        return codes;
    }

    //    验证邮箱是否已经注册
    @RequestMapping(value = "/mailnumcheck")
    @ResponseBody
    public String mailnumcheck(String mail) {
        String bools = loginservice.queryMailById(mail);
        if (bools == "1")
            return "1";
        else
            return "0";
    }

}
