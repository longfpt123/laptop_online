/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Lehait
 */
public class Category {
    private int id;
    private String name;
    private String describe;

    public Category() {
    }

    public Category(int id_cat, String name_cat, String describe) {
        this.id = id_cat;
        this.name = name_cat;
        this.describe = describe;
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

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "Category{" + "id_cat=" + id + ", name_cat=" + name + ", describe=" + describe + '}';
    }
       
}
