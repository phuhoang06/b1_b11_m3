package com.example.qlsp.model;

public class Product {
    private int id;
    private String name;
    private int price;
    private String infor;

    public Product() {
    }

    public Product(int id, String name, int price, String infor) {
        this.price = price;
        this.id = id;
        this.name = name;
        this.infor = infor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getInfor() {
        return infor;
    }

    public void setInfor(String infor) {
        this.infor = infor;
    }
}
