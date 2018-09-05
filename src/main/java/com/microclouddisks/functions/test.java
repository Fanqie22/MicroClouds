package com.microclouddisks.functions;

import java.io.File;
import java.io.IOException;

public class test {
    public  static  void   main(String [] args) throws IOException {
        File file=new File("");
        System.out.println("file path : "+file.getCanonicalPath()+File.separator + "UsersFiles");
    }
}
