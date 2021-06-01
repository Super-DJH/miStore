package com.Day.StuQue.domain;

public class Tran_his {
    private String id;
    private String userName;
    private String commName;
    private String commVersion;
    private String commSpace;
    private String commSize;
    private String commColor;
    private String commMoney;
    private String createTime;
    private String createBy;

    public Tran_his() {
    }

    public Tran_his(String id, String userName, String commName, String commVersion, String commSpace, String commSize, String commColor, String commMoney, String createTime, String createBy) {
        this.id = id;
        this.userName = userName;
        this.commName = commName;
        this.commVersion = commVersion;
        this.commSpace = commSpace;
        this.commSize = commSize;
        this.commColor = commColor;
        this.commMoney = commMoney;
        this.createTime = createTime;
        this.createBy = createBy;
    }

    @Override
    public String toString() {
        return "Tran_his{" +
                "id='" + id + '\'' +
                ", userName='" + userName + '\'' +
                ", commName='" + commName + '\'' +
                ", commVersion='" + commVersion + '\'' +
                ", commSpace='" + commSpace + '\'' +
                ", commSize='" + commSize + '\'' +
                ", commColor='" + commColor + '\'' +
                ", commMoney='" + commMoney + '\'' +
                ", createTime='" + createTime + '\'' +
                ", createBy='" + createBy + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCommName() {
        return commName;
    }

    public void setCommName(String commName) {
        this.commName = commName;
    }

    public String getCommVersion() {
        return commVersion;
    }

    public void setCommVersion(String commVersion) {
        this.commVersion = commVersion;
    }

    public String getCommSpace() {
        return commSpace;
    }

    public void setCommSpace(String commSpace) {
        this.commSpace = commSpace;
    }

    public String getCommSize() {
        return commSize;
    }

    public void setCommSize(String commSize) {
        this.commSize = commSize;
    }

    public String getCommColor() {
        return commColor;
    }

    public void setCommColor(String commColor) {
        this.commColor = commColor;
    }

    public String getCommMoney() {
        return commMoney;
    }

    public void setCommMoney(String commMoney) {
        this.commMoney = commMoney;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }
}
