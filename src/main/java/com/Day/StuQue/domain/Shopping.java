package com.Day.StuQue.domain;

public class Shopping {
    private String id;
    private String userAddr;
    private String userName;
    private String commName;
    private String commVersion;
    private String commSpace;
    private String commSize;
    private String commColor;
    private String commMoney;
    private String commTypeName;
    private String userId;
    private String commId;
    private String commTypeId;

    //后加购物车数量count(*)



    public Shopping() {
    }

    public Shopping(String id, String userAddr, String userName, String commName, String commVersion, String commSpace, String commSize, String commColor, String commMoney, String commTypeName, String userId, String commId, String commTypeId) {
        this.id = id;
        this.userAddr = userAddr;
        this.userName = userName;
        this.commName = commName;
        this.commVersion = commVersion;
        this.commSpace = commSpace;
        this.commSize = commSize;
        this.commColor = commColor;
        this.commMoney = commMoney;
        this.commTypeName = commTypeName;
        this.userId = userId;
        this.commId = commId;
        this.commTypeId = commTypeId;
    }

    @Override
    public String toString() {
        return "Shopping{" +
                "id='" + id + '\'' +
                ", userAddr='" + userAddr + '\'' +
                ", userName='" + userName + '\'' +
                ", commName='" + commName + '\'' +
                ", commVersion='" + commVersion + '\'' +
                ", commSpace='" + commSpace + '\'' +
                ", commSize='" + commSize + '\'' +
                ", commColor='" + commColor + '\'' +
                ", commMoney='" + commMoney + '\'' +
                ", commTypeName='" + commTypeName + '\'' +
                ", userId='" + userId + '\'' +
                ", commId='" + commId + '\'' +
                ", commTypeId='" + commTypeId + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserAddr() {
        return userAddr;
    }

    public void setUserAddr(String userAddr) {
        this.userAddr = userAddr;
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

    public String getCommTypeName() {
        return commTypeName;
    }

    public void setCommTypeName(String commTypeName) {
        this.commTypeName = commTypeName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCommId() {
        return commId;
    }

    public void setCommId(String commId) {
        this.commId = commId;
    }

    public String getCommTypeId() {
        return commTypeId;
    }

    public void setCommTypeId(String commTypeId) {
        this.commTypeId = commTypeId;
    }

    //后加



}
