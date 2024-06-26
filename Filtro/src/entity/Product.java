package entity;

public class Product {
    //    ENTIDAD CON SUS ATRIBUTOS, CONSTRUCTORES, GETTER, SETTER Y TO-STRING
    private int id;
    private String name;
    private int stock;
    private double price;
    private int idStore;

    public Product() {
    }

    public Product(String name, int stock, double price, int idStore) {
        this.name = name;
        this.stock = stock;
        this.price = price;
        this.idStore = idStore;
    }

    public Product(int id, String name, int stock, double price, int idStore) {
        this.id = id;
        this.name = name;
        this.stock = stock;
        this.price = price;
        this.idStore = idStore;
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

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getIdStore() {
        return idStore;
    }

    public void setIdStore(int idStore) {
        this.idStore = idStore;
    }

    @Override
    public String toString() {
        return
                "  - ID: " + id +
                        "  Name: " + name +
                        "  Stock: " + stock +
                        "  Price: " + price +
                        "  StoreID: " + idStore;
    }
}
