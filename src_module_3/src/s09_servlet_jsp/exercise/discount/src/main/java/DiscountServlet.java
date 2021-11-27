import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/discount")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String listPrice = request.getParameter("LP");
        String discountPercent = request.getParameter("DP");
        double price = Double.parseDouble(listPrice);
        double percent = Double.parseDouble(discountPercent);

        double discountAmount = price * percent * 0.01;
        double discountPrice = price - discountAmount;

        PrintWriter writer = response.getWriter();
        if (1000 < price && percent > 0){
            writer.println("discountAmount: "+ discountAmount);
            writer.println("discountPrice: " + discountPrice);
        }else {
            writer.println("invalid");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
