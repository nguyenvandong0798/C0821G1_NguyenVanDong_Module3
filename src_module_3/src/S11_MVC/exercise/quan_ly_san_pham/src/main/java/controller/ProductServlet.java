package controller;

import bean.Product;
import service.impl.ProductService;
import service.IProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    private static IProductService iproductService = new ProductService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":
                createProduct(request, response);

        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("namee");
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        String nation = request.getParameter("nation");

        request.setAttribute("products",iproductService.getAll());
        request.getRequestDispatcher("product/list.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }
        switch(action){
            case "create":
                create(request,response);
            default:
                getListProduct(request, response);
                break;
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("product/create.jsp").forward(request,response);
    }

    private void getListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = iproductService.getAll();
        if (products == null){
            request.setAttribute("masege", "not value");
        }else {
            request.setAttribute("products", products);
        }
        request.getRequestDispatcher("product/list.jsp").forward(request, response);
    }
}
