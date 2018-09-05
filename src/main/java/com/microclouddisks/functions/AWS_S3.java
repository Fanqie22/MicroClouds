//package com.microclouddisks.functions;
//
//import com.amazonaws.auth.AWSCredentials;
//import com.amazonaws.auth.BasicAWSCredentials;
//import com.amazonaws.services.s3.AmazonS3;
//import com.amazonaws.services.s3.AmazonS3Client;
//import com.amazonaws.services.s3.model.*;
//
//import java.io.*;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.util.ArrayList;
//import java.util.List;
//
//public class AWS_S3 {
//
//    private static final String AccessKey = "AKIAJMKGD4DYEZA4KIEA";
//    private static final String SecretAccessKey = "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";
//
//    private static final String AccessKey = "AKIAIZPPTDI3TVXYRJSQ";
//    private static final String SecretAccessKey = "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";
//
//    private static final String SUFFIX = "/";
//
//    public AmazonS3 CreateS3Client() {
//        // 1.创建凭证
//        AWSCredentials credentials =
//                new BasicAWSCredentials(AccessKey, SecretAccessKey);
//        // 2.创建S3 Client
//        AmazonS3 s3client = new AmazonS3Client(credentials);
//        return s3client;
//    }
//
//    public List<Bucket> GetBucketList(AmazonS3 s3client, String bucketName) {
//        List<Bucket> list = new ArrayList<Bucket>();
//        for (Bucket bucket : s3client.listBuckets()) {
////            System.out.println(" - " + bucket.getName());
//            list.add(bucket);
//        }
//        return list;
//    }
//
//    //    5.在s3 Bucket中创建文件夹
//    public String CreateFolder(String bucketName, String folderPath, AmazonS3 s3client) {
//        // create meta-data for your folder and set content-length to 0
//        ObjectMetadata metadata = new ObjectMetadata();
//        metadata.setContentLength(0);
//        // create empty content
//        InputStream emptyContent = new ByteArrayInputStream(new byte[0]);
//        // create a PutObjectRequest passing the folder name suffixed by /
//        PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName,
//                folderPath + SUFFIX, emptyContent, metadata);
//        // send request to S3 to create folder
//        s3client.putObject(putObjectRequest);
//        return s3client.getRegionName() + folderPath;
//    }
//
//    public void UpdateFile(File file, String bucketName, String s3filePath, AmazonS3 s3client) {
////        String s3filePath = folderName + SUFFIX + "testvideo.mp4";
//<<<<<<< HEAD
//        AccessControlList accessControlList=new AccessControlList();
////        accessControlList.setOwner();
//        s3client.putObject(new PutObjectRequest(bucketName, s3filePath, file));
//=======
//        System.out.println("s3filepath 10  :");
//        AccessControlList accessControlList = new AccessControlList();
////        accessControlList.setOwner();
//        System.out.println("s3filepath 11  :");
//        s3client.putObject(new PutObjectRequest(bucketName, s3filePath, file));
//        System.out.println("s3filepath 12  :");
//>>>>>>> 完整的上传/下载功能
//    }
//
//
////    3.创建Bucket
////      s3client.createBucket(bucketName);
//    //7.删除Bucket
////      s3client.deleteBucket(bucketName);
//    //8.删除文件
////      s3client.deleteObject(bucketName, fileName);
//
//    public String getFileURL(AmazonS3 s3client, String bucketName, String filePath) {
//        GeneratePresignedUrlRequest urlRequest = new GeneratePresignedUrlRequest(
//                bucketName, filePath);
//        //生成公用的url
//        URL url = s3client.generatePresignedUrl(urlRequest);
//        return url.toString();
//    }
//
//    public File downloadFileFromURL(String fileUrl, String fileName, String savePath) throws IOException {
//        URL url = new URL(fileUrl);
//        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//        connection.setConnectTimeout(3 * 1000);
//
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
//        return file;
//    }
//
//}
