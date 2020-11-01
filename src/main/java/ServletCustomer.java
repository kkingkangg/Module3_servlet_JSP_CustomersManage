import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletCustomer",urlPatterns = "/customer")
public class ServletCustomer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Eddy","0123456789","Ha Noi","09-11-1994","img1.jpg"));
        customerList.add(new Customer("MingMang","0123456789","Ha Noi","09-11-1994","img2.jpg"));
        customerList.add(new Customer("Kem","0123456789","Ha Noi","09-11-1994","img3.jpg"));
        customerList.add(new Customer("AT","0123456789","Ha Noi","09-11-1994","img4.jpg"));
        customerList.add(new Customer("Mi","0123456789","Ha Noi","09-11-1994","img1.jpg"));
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer.jsp");

        request.setAttribute("customer",customerList);
        dispatcher.forward(request,response);
    }
}
