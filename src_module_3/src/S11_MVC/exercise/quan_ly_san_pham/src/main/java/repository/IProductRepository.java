package repository;

import bean.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> getAll();
    boolean save(Product products);
    void update(int id, Product products);
    Product findById(int id);
    void remove(int id);
    List<Product> search(String search);
}
