package bean;

public class Product {
    private int id;
    private String name;
    private String price;
    private String description;
    private String nation;



    public Product() {
    }

    public Product(int id, String name, String price, String description, String nation) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.nation = nation;

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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }
}
