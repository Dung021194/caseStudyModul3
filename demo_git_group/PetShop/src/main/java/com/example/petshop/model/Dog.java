package com.example.petshop.model;

public class Dog {
    private int id;
    private String name;
    private int age;
    private double price;
    private int quantity;
    private int species;
    private String image;

    public Dog(int id, String name, int age, double price, int quantity, int species, String image) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.price = price;
        this.quantity = quantity;
        this.species = species;
        this.image = image;
    }

    public Dog(String name, int age, double price, int quantity, int species, String image) {
        this.name = name;
        this.age = age;
        this.price = price;
        this.quantity = quantity;
        this.species = species;
        this.image = image;
    }

    public Dog() {
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSpecies() {
        return species;
    }

    public void setSpecies(int species) {
        this.species = species;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Dog{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", price=" + price +
                ", quantity=" + quantity +
                ", species=" + species +
                ", image='" + image + '\'' +
                '}';
    }
}
