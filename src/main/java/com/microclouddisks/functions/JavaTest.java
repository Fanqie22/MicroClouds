//package com.microclouddisks.functions;
//
//import com.amazonaws.auth.AWSCredentials;
//import com.amazonaws.auth.BasicAWSCredentials;
//import com.amazonaws.services.s3.AmazonS3;
//import com.amazonaws.services.s3.AmazonS3Client;
//import com.amazonaws.services.s3.model.Bucket;
//import com.amazonaws.services.s3.model.GeneratePresignedUrlRequest;
//import com.amazonaws.services.s3.model.ObjectMetadata;
//import com.amazonaws.services.s3.model.PutObjectRequest;
//
//import com.microclouddisks.service.mainService;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import java.io.*;
//import java.net.HttpURLConnection;
//import java.net.URL;
//
//public class JavaTest {
//    private static final String SUFFIX = "/";
//
//    @Autowired
//    private static mainService mainservice;
//
//    public static void test1() {
////        double d = 141.425298525;
////        System.out.println(String.format("%.2f", d));
//
//
////        1.创建凭证
//        AWSCredentials credentials =
//                new BasicAWSCredentials("AKIAJMKGD4DYEZA4KIEA", "5R5D0T1dMro0GTATolYSmoFWtdNjrU9a26KuRNeW");
////        2.创建S3 Client
//        AmazonS3 s3client = new AmazonS3Client(credentials);
////        3.创建Bucket
//        String bucketName = "mys3test1sss";
//        s3client.createBucket(bucketName);
////        4.获取s3 Bucket的list
//        for (Bucket bucket : s3client.listBuckets()) {
//            System.out.println("bucket : - " + bucket.getName());
//        }
//
//        String folderName = "hello/hello3";
//
//        //    6.上传文件
//        String fileName = folderName + SUFFIX + "testvideo.mp4";
//        s3client.putObject(new
//                PutObjectRequest(bucketName, fileName,
//                new File("C:\\Users\\user\\Desktop\\testvideo.mp4")));
//        //7.删除Bucket
//        s3client.deleteBucket(bucketName);
//        //8.删除文件
//        s3client.deleteObject(bucketName, fileName);
//
//
//    }
//
//
//    //    5.在s3 Bucket中创建文件
//    public static void createFolder(String bucketName, String folderName, AmazonS3 client) {
//        // create meta-data for your folder and set content-length to 0
//        ObjectMetadata metadata = new ObjectMetadata();
//        metadata.setContentLength(0);
//        // create empty content
//        InputStream emptyContent = new ByteArrayInputStream(new byte[0]);
//        // create a PutObjectRequest passing the folder name suffixed by /
//        PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName,
//                folderName + SUFFIX, emptyContent, metadata);
//        // send request to S3 to create folder
//        client.putObject(putObjectRequest);
//        System.out.println("success!");
//    }
//
//
//    public static void downloadFileFromUrl(String fileUrl, String fileName, String savePath) throws Exception {
//        //获取连接
//        URL url = new URL(fileUrl);
//        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//        connection.setConnectTimeout(3 * 1000);
//
//
//        //设置请求头
////        connection.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36");
//        //获取输入流
//        InputStream in = connection.getInputStream();
//
//        File saveDir = new File(savePath);
//        if (!saveDir.exists()) {
//            saveDir.mkdirs();
//        }
//        File file = new File(savePath + fileName);
//
//        OutputStream out = new FileOutputStream(file);
//
//        byte[] bytes = new byte[1024];
//        int len = 0;
//        while ((len = in.read(bytes)) != -1) {
//            out.write(bytes, 0, len);
//        }
//        out.close();
//        in.close();
//    }
//
//
//    public static void main(String[] args) throws Exception {
////        test1();
//        String bucketName = "microclouds";
////        String foldername = "hello/hello3";
//        AWSCredentials credentials =
//
//                new BasicAWSCredentials("AKIAJMKGD4DYEZA4KIEA", "5R5D0T1dMro0GTATolYSmoFWtdNjrU9a26KuRNeW");
//
//                new BasicAWSCredentials("AKIAIZPPTDI3TVXYRJSQ", "W8yV2xN7a51BDVY7uEGtQldjUHccoZ/PxGna1T4m");
//
////        2.创建S3 Client
//        AmazonS3 s3client = new AmazonS3Client(credentials);
////        createFolder(bucketName, foldername, s3client);
////        String fileName = folderName + SUFFIX + "testvideo.mp4";
////        s3client.putObject(new
////                PutObjectRequest(bucketName, "19960606060606",
////                new File("C:\\Users\\Administrator\\Desktop\\ip.txt")));
//        GeneratePresignedUrlRequest urlRequest = new GeneratePresignedUrlRequest(
//                bucketName, "test/19960606060606.txt");
//        //生成公用的url
//<<<<<<< HEAD
//        URL url = s3client.generatePresignedUrl(urlRequest);
//        System.out.println("url :" + url);
//        System.out.println("url to string :" + url.toString());
////String fileUrl,String fileName,String savePath
//        downloadFileFromUrl(url.toString(), "hellohello.txt", "C:\\Users\\Administrator\\Desktop\\kk\\");
//        System.out.println("download success!");
//=======
////        URL url = s3client.generatePresignedUrl(urlRequest);
////        System.out.println("url :" + url);
////        System.out.println("url to string :" + url.toString());
////String fileUrl,String fileName,String savePath
////        downloadFileFromUrl(url.toString(), "hellohello.txt", "C:\\Users\\Administrator\\Desktop\\kk\\");
//        System.out.println("download success!");
//
//>>>>>>> 完整的上传/下载功能
//    }
//}
