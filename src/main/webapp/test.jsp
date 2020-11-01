<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 30/10/2020
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
</head>
<body>
<%
    class Customer {
        public String name;
        public String date;
        public String address;
        public String img;

        public Customer(String name, String date, String address, String img) {
            this.name = name;
            this.date = date;
            this.address = address;
            this.img = img;
        }
    }
    List<Customer> ListCustomer = new ArrayList<Customer>();
    ListCustomer.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "img1.jpg"));
    ListCustomer.add(new Customer("Bùi Quang Huỳnh", "1998-08-20", "Thái Nguyên", "img2.jpg"));

    request.setAttribute("customer", ListCustomer);
%>
<style>

</style>
<form>
    <div>
        <table border="1px">
            <tr>
                <td colspan="4" align="center">Danh sách khách hàng</td>
            </tr>
            <tr>
                <td>Tên</td>
                <td>Ngày Sinh</td>
                <td>Địa chỉ</td>
                <td>Ảnh</td>

            </tr>
            <%
                int count = ListCustomer.size();
            %>
            <%
                Customer customer = null;
                for (int i = 0; i < count; i++) {
                customer = ListCustomer.get(i);
            %>
            <tr>
                <td><%=customer.name%>
                </td>
                <td><%=customer.address %>
                </td>
                <td><%=customer.date %>
                </td>
                <td><img src="<%=customer.img%>" alt="<%=customer.name%>"/></td>
            </tr>
            <%
                }
            %>

        </table>
    </div>
</form>
</body>
</html>
Collapse

