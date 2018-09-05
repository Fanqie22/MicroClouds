package com.microclouddisks.functions;

public class queryIcon {

    public String iconQuery(String filetype) {

        if (filetype.equals("txt")) {
            return "img/txt.jpg";
        } else if (filetype.equals("jpg") || filetype.equals("png") || filetype.equals("gif")) {
            return "img/image.jpg";
        } else if (filetype.equals("zip") || filetype.equals("rar")) {
            return "img/zip.jpg";
        } else if (filetype.equals("doc") || filetype.equals("docx")) {
            return "img/word.jpg";
        } else if (filetype.equals("pdf")) {
            return "img/pdf.jpg";
        } else if (filetype.equals("ppt") || filetype.equals("pptx")) {
            return "img/ppt.jpg";
        } else if (filetype.equals("mp3") || filetype.equals("flac") || filetype.equals("wav")) {
            return "img/music.jpg";
        } else if (filetype.equals("xlsx")) {
            return "img/excel.jpg";
        } else if (filetype.equals("mp4") || filetype.equals("avi") || filetype.equals("wmv")) {
            return "img/video.jpg";
        } else {
            return "img/otherfiles.jpg";
        }
    }
}
