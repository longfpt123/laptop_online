package model;

/**
 *
 * @author asus
 */
public class Product {
    
    private int id;
    private int idCat;
    private String name;
    private String images;
    private int quantity;
    private Double price;
    private String supplier;
    private String infor;
    private int sellID;
    private int status;
    public Product() {
    }

    public Product(int id, int idCat, String name, String images, int quantity, Double price, String supplier, String infor, int sellID, int status) {
        this.id = id;
        this.idCat = idCat;
        this.name = name;
        this.images = images;
        this.quantity = quantity;
        this.price = price;
        this.supplier = supplier;
        this.infor = infor;
        this.sellID = sellID;
        this.status = status;
    }
    
     public Product(int id, int idCat, String name, String images, int quantity, Double price, String supplier, String infor, int sellID) {
        this.id = id;
        this.idCat = idCat;
        this.name = name;
        this.images = images;
        this.quantity = quantity;
        this.price = price;
        this.supplier = supplier;
        this.infor = infor;
        this.sellID = sellID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCat() {
        return idCat;
    }

    public void setIdCat(int idCat) {
        this.idCat = idCat;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getInfor() {
        return infor;
    }

    public void setInfor(String infor) {
        this.infor = infor;
    }

    public int getSellID() {
        return sellID;
    }

    public void setSellID(int sellID) {
        this.sellID = sellID;
    }

   
    @Override
    public String toString() {
        return "Product{" + "id_pro=" + id + ", id_cat=" + idCat + ", name_pro=" + name + ", images=" + images + ", quantity=" + quantity + ", price=" + price + ", supplier=" + supplier + ", infor=" + infor + '}'
                +"sell_ID"+sellID;
    }
    
}
