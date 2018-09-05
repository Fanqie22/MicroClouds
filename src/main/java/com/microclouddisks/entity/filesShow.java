package com.microclouddisks.entity;

public class filesShow {
    private String icon;
    private folder folder;
    private folderList folderlist;

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public com.microclouddisks.entity.folder getFolder() {
        return folder;
    }

    public void setFolder(com.microclouddisks.entity.folder folder) {
        this.folder = folder;
    }

    public folderList getFolderlist() {
        return folderlist;
    }

    public void setFolderlist(folderList folderlist) {
        this.folderlist = folderlist;
    }

    @Override
    public String toString() {
        return "filesShow{" +
                "icon='" + icon + '\'' +
                ", folder=" + folder +
                ", folderlist=" + folderlist +
                '}';
    }
}
