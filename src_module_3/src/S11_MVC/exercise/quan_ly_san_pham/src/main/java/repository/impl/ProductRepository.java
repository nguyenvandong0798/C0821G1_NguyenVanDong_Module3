package repository.impl;

import bean.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {
    private static Map<Integer, Product> productList =new HashMap<>();
    static {
        productList.put(1, new Product(1, "Milk", "1000", "thuc uong", "viet nam"));
        productList.put(2, new Product(2, "Cake", "2000", "do an", "viet nam"));
        productList.put(3, new Product(3, "candy", "1300", "do an", "viet nam"));
        productList.put(4, new Product(4, "cream", "1600", "do an", "viet nam"));
    }

    @Override
    public List<Product> getAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public boolean save(Product products) {
        this.productList.put(products.getId(),products);
        return false;
    }

    @Override
    public void update(int id, Product products) {
        this.productList.put(products.getId(), products);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public void remove(int id) {
        productList.remove(id);
    }
}
