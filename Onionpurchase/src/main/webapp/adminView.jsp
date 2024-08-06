<!DOCTYPE html>
<%@page import="com.onionpurchase.Customer"%>
<%@page import="java.util.List"%>
<%@page import="com.onionpurchase.ru"%>
<html>
<head>
    <title>Onion Purchase - Admin View</title>
</head>
<body>
    <h2>Customer Details</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Pincode</th>
            <th>City</th>
            <th>District</th>
            <th>Onion Type</th>
            <th>KG</th>
        </tr>
     
     
        <%
        ru as=new ru();
            List<Customer> customers = as.b();
            if (customers.isEmpty()) {
                for (Customer customer : customers) {
        %>
        <tr>
            <td><%= customer.getId() %></td>
            <td><%= customer.getName() %></td>
            <td><%= customer.getEmail() %></td>
            <td><%= customer.getPhone() %></td>
            <td><%= customer.getAddress() %></td>
            <td><%= customer.getPincode() %></td>
            <td><%= customer.getCity() %></td>
            <td><%= customer.getDistrict() %></td>
            <td><%= customer.getOnionType() %></td>
            <td><%= customer.getKg() %></td>
        </tr>
        <%
                }
            } else {
                out.println("<tr><td colspan='10'>No customers found.</td></tr>");
            }
        %>
    </table>
</body>
</html>
