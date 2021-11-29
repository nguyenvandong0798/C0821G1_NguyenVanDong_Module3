import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ClientServlet", urlPatterns = {"","/index"})
public class ClientServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Client> clientList =new ArrayList<>();
        clientList.add( new Client("Mai văn Hoàng","1983-08-20","Hà Nội","anh123.jpg"));
        clientList.add( new Client("Nguyễn văn Nam","1983-08-21","Hà Nội","hinh.jpg"));
        clientList.add( new Client("Nguyễn Thái Hoài","1983-08-22","Hà Nội","hinh2.jpg"));
        clientList.add( new Client("Trần Đặng Khoa","1983-08-17","Hà Nội","hinh.jpg"));
        clientList.add( new Client("Nguyễn Đình Thi","1983-08-19","Hà Nội","hinh2.jpg"));

        request.setAttribute("clientlistsevlet", clientList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
