package com.Day.StuQue.domain;

public class CommodityType {
    private String id;
    private String typeName;

    public CommodityType() {
    }

    public CommodityType(String id, String typeName) {
        this.id = id;
        this.typeName = typeName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    @Override
    public String toString() {
        return "CommodityType{" +
                "id='" + id + '\'' +
                ", typeName='" + typeName + '\'' +
                '}';
    }
}
