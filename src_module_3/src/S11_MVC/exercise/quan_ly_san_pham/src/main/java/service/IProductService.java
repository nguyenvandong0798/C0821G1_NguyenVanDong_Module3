package service;

import bean.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAll();
    boolean save(Product products);
    void update(int id, Product product);
    Product findById(int id);
    void remove(int id);
}
