package service.impl;

import bean.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;


public class ProductService implements IProductService {
    private static IProductRepository iProductRepository = new ProductRepository();
    @Override
    public List<Product> getAll() {
        try {
            List<Product> products = iProductRepository.getAll();
            if (products.size() == 0) {
                return null;
            }
            return products;
        } catch (Exception e) {
            System.out.println("error");
            return null;
        }
    }
}
