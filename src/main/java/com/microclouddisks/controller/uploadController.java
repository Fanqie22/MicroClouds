package com.microclouddisks.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class uploadController {

    @RequestMapping("/a")
    public String a() {
        System.out.println("this is upload.jsp");
        return "test";
    }

    // 处理上传的
    @RequestMapping("/uploads")
    public void upload(HttpServletRequest request, HttpServletResponse response,
                       @RequestParam("file") CommonsMultipartFile file) throws IOException {
        PrintWriter out;
        boolean flag = false;
        System.out.println("呢问ag9oaglka你");
        if (file.getSize() > 0) {
            String path = "C:\\Users\\Administrator\\Desktop\\news\\";
//            String uploadPath = request.getSession().getServletContext().getRealPath(path);
            System.out.println("BBBBBBooooooooBBBBBBBB" + path);
            try {
                FileUtils.copyInputStreamToFile(file.getInputStream(),
                        new File(path, file.getOriginalFilename()));
                flag = true;
            } catch (Exception e) {
            }

        }
        out = response.getWriter();
        if (flag == true) {
            out.print("1");
        } else {
            out.print("2");
        }
    }
}
