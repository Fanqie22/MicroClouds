package com.microclouddisks.controller;

//import com.amazonaws.services.s3.AmazonS3;
//import com.microclouddisks.functions.AWS_S3;
//import com.microclouddisks.entity.Echerts;

import com.microclouddisks.entity.diskUser;
import com.microclouddisks.entity.folder;
import com.microclouddisks.entity.logs;
import com.microclouddisks.functions.queryIcon;
import com.microclouddisks.service.mainService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
public class mainController {

    @Autowired
    private mainService mainservice;

    @RequestMapping(value = "/main")
    public String mains(HttpSession session, Model model) {
        diskUser user = (diskUser) session.getAttribute("diskuser");
        if (user.getUsermail() != null) {
            List<folder> folderlist = mainservice.folderQuery(user.getUsermail(), user.getUsermail());
            List<logs> logsList = mainservice.logsQuery(user.getUsermail());
            model.addAttribute("logsList", logsList);
            model.addAttribute("folderlist", folderlist);
            return "main";
        } else {
            return "login";
        }
    }

    public String mains(Model model) {
//        diskUser user = (diskUser) session.getAttribute("diskuser");
//        if (user.getUsermail() == null) {
//        diskUser user = null;
//        System.out.println("sdss" + user.getUsermail());
//        user.setUsermail("1393203396@qq.com");
//        System.out.println("sss" + user.getUsermail());
//        System.out.println("Controller : main() : session " + user.getUsermail());
        List<folder> folderlist = mainservice.folderQuery("1393203396@qq.com", "1393203396@qq.com");
        List<logs> logsList = mainservice.logsQuery("1393203396@qq.com");
        model.addAttribute("logsList", logsList);
        model.addAttribute("folderlist", folderlist);
        return "main";
//        } else {
//            System.out.println("Controller : main() : session is null " + user.getUsermail());
//            return "login";
//        }

    }

    // 处理上传的
    @RequestMapping("/upload")
    public void upload(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                       @RequestParam("file") CommonsMultipartFile file,
                       @RequestParam("filepaths") String parent) throws IOException {
        PrintWriter out;
        String filesizetoString = null;
        boolean flag = false;
        if (!file.isEmpty()) {

            File currentFilePath = new File("");
            String filename = file.getOriginalFilename();
            double filesize = file.getSize();
            diskUser user = (diskUser) session.getAttribute("diskuser");
            if (parent == null || parent.length() <= 0) {
                parent = user.getUsermail();
            }
            String userFilePath = currentFilePath.getCanonicalPath() + File.separator + "UsersFiles" + File.separator + parent;
            System.out.println(" udd pfilepath :   " + userFilePath);

            try {
                //保存用户上传的文件
                File saveFile = new File(userFilePath);
                if (!saveFile.exists()) {
                    saveFile.mkdirs();

                }
                File saveFile2 = new File(userFilePath + File.separator + filename);
                file.transferTo(saveFile2);
                flag = true;
                out = response.getWriter();
                if (flag == true) {
                    out.print("1");
                } else {
                    out.print("2");
                }

                int index = filename.lastIndexOf(".");
                String filetype = filename.substring(index + 1, filename.length());

                if (filesize >= 0 && filesize < 1024) {//文件大小小于 1K 字节级别
                    filesizetoString = String.valueOf(filesize) + " Bytes";
                } else if (filesize >= 1024 && filesize < 1048576) { //K
                    filesize = filesize / 1024;
                    filesizetoString = String.format("%.2f", filesize) + " KB";
                } else if (filesize >= 1048576 && filesize < 1073741824) {
                    filesize = filesize / 1048576;
                    filesizetoString = String.format("%.2f", filesize) + " MB";
                } else {
                    filesize = filesize / 1073741824;
                    filesizetoString = String.format("%.2f", filesize) + " GB";
                }

                Date date = new Date();
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String time = formatter.format(date);
                folder folder = new folder();
                folder.setFolderid(user.getUsermail() + "-" + time);
                folder.setFoldername(filename);
                folder.setUsermail(user.getUsermail());
                folder.setUpdatetime(time);
                folder.setSizes(filesizetoString);
                folder.setFiletype(filetype);
                folder.setParent(parent);
                folder.setNum(0);
                queryIcon iconquery = new queryIcon();
                folder.setIcon(iconquery.iconQuery(filetype));
                folder.setFilepath(parent + File.separator + filename);

                mainservice.creatFolder(folder);

                logs logs = new logs();
                logs.setLogid(user.getUsermail() + "-" + time);
                logs.setLogtype("上传文件");
                logs.setLogtime(time);
                logs.setLogcontent("用户 " + user.getUsermail() + " 上传了文件 : " + filename);
                logs.setUsermail(user.getUsermail());
                logs.setSizes(filesizetoString);
                logs.setFilename(filename);
                logs.setFileicon(folder.getIcon());
                flag = true;
            } catch (Exception e) {
            }

        }

    }


    @RequestMapping(value = "/newFolder")
    public String creatFolder(HttpServletRequest request, HttpSession session) throws IOException {
        String parent = request.getParameter("filepath");
        String usermail = request.getParameter("usermail");
        String foldername = request.getParameter("foldername");
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = formatter.format(date);
        if (foldername == null || foldername.length() <= 0) {
            foldername = "新建文件夹" + "_" + time;
        }
        if (parent == null || parent.length() <= 0) {
            parent = usermail;
        }


        File file = new File("");
        String folderpath = file.getCanonicalPath() + File.separator + "UsersFiles" + File.separator + parent + File.separator + foldername + File.separator;
        file = new File(folderpath);
        if (!file.exists()) {
            file.mkdirs();
            System.out.println("filepath :   " + folderpath);
        } else {
            file = new File(folderpath + File.separator + "2");
            System.out.println("filepath2 :   " + folderpath);
            file.mkdirs();
        }

        folder folder = new folder();
        folder.setFolderid(usermail + "-" + time);
        folder.setFoldername(foldername);
        folder.setSizes("-");
        folder.setUpdatetime(time);
        folder.setUsermail(usermail);
        folder.setFiletype("folder");
        folder.setParent(parent);//todo
        folder.setNum(0);
        folder.setIcon("img/folder6.jpg");
        folder.setFilepath(parent + File.separator + foldername);
        mainservice.creatFolder(folder);

        logs logs = new logs();
        logs.setLogid(usermail + "-" + time);
        logs.setFileicon("img/folder6.jpg");
        logs.setFilename(foldername);
        logs.setSizes("-");
        logs.setLogcontent("用户 " + usermail + " 新建文件夹 : " + foldername);
        logs.setLogtime(time);
        logs.setLogtype("创建文件夹");
        logs.setUsermail(usermail);
        mainservice.logInsert(logs);

//        session.setAttribute("folder", folder);
        return "redirect:main";
    }

    @RequestMapping(value = "/deleteFolder")
    public String deleteFolder(HttpServletRequest request) {

//        String filepath = request.getParameter("filepath");
//        String usermail = request.getParameter("usermail");

        String deleteFiles = request.getParameter("deletefoldername");
        System.out.println("long :" + deleteFiles);
        String[] fileLists = deleteFiles.split(":");

        folder folder = new folder();
        for (String s : fileLists) {
//            folder = mainservice.folderQueryById(s);
//            mainservice.trashInsert(folder);
            mainservice.deleteFileById(s);
        }
        return "redirect:main";
    }


    @RequestMapping(value = "/deleteOneFolder")
    public String deleteOneFolder(HttpServletRequest request) throws IOException {
        String fileid = request.getParameter("OnefileId");
//        folder folder = mainservice.folderQueryById(fileid);
//        mainservice.trashInsert(folder);
        String filepath = mainservice.folderQueryByidone(fileid);
        File file = new File("");
        filepath = file.getCanonicalPath() + File.separator + filepath;
        System.out.println("noew delete : " + filepath);
        file = new File(filepath);
        System.out.println(file.delete());
        mainservice.deleteFileById(fileid);
        return "redirect:main";
    }


    @RequestMapping(value = "/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request,
                                           @RequestParam("fileid") String fileid,
                                           @RequestParam("filename") String filename,
                                           Model model) throws Exception {
        String filepath = mainservice.folderQueryByidone(fileid);
        File file = new File("");
        file = new File(file.getCanonicalPath() + File.separator + "UsersFiles" + File.separator + filepath);
        HttpHeaders headers = new HttpHeaders();
        // 下载显示的文件名，解决中文名称乱码问题
        String downloadFielName = new String(filename.getBytes("UTF-8"), "iso-8859-1");
        // 通知浏览器以attachment（下载方式）打开图片
        headers.setContentDispositionFormData("attachment", downloadFielName);
        // application/octet-stream ： 二进制流数据（最常见的文件下载）。
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        // 201 HttpStatus.CREATED
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.CREATED);
    }

    @RequestMapping(value = "/detailFilesList")
    public String detailFilesList(HttpSession session, Model model, HttpServletRequest request) {
        diskUser user = (diskUser) session.getAttribute("diskuser");
        String fileid = request.getParameter("fileid");
        String filepath = mainservice.folderQueryByidone(fileid);

        if (user.getUsermail() != null) {
            List<folder> folderlist = mainservice.folderQuery(user.getUsermail(), filepath);
            model.addAttribute("filepath", filepath);
            model.addAttribute("folderlist", folderlist);
            return "main";
        } else {
            return "login";
        }
    }


    @RequestMapping("/userCenter")
    public String userCenter(HttpSession session, Model model) {

        return "userCenter";
    }


    @RequestMapping(value = "/SearchFile")
    public String SearchFile(HttpServletRequest request, HttpSession session, Model model) {
        String filename = request.getParameter("searchFileName");
        System.out.println("Search controller " + "1393203396@qq.com" + ", " + filename);
        List<folder> filelists = mainservice.likeQueryByFileName(filename, "1393203396@qq.com");
        System.out.println("Search success!");
        model.addAttribute("folderlist", filelists);
        return "main";
    }


}
