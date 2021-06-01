package com.Day.StuQue.domain;

public class Commodity {
    private String id;
    private String name;
    private String version;
    private String space;
    private String size;
    private String color;
    private String money;
    private String typeId;

    private String image;

    public Commodity() {

    }

    @Override
    public String toString() {
        return "Commodity{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", version='" + version + '\'' +
                ", space='" + space + '\'' +
                ", size='" + size + '\'' +
                ", color='" + color + '\'' +
                ", money='" + money + '\'' +
                ", typeId='" + typeId + '\'' +
                '}';
    }

    public Commodity(String id, String name, String version, String space, String size, String color, String money, String typeId) {
        this.id = id;
        this.name = name;
        this.version = version;
        this.space = space;
        this.size = size;
        this.color = color;
        this.money = money;
        this.typeId = typeId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getSpace() {
        return space;
    }

    public void setSpace(String space) {
        this.space = space;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }


    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
