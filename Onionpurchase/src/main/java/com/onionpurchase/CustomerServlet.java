package com.onionpurchase;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String pincode = request.getParameter("pincode");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String onionType = request.getParameter("onion_type");
        int kg = Integer.parseInt(request.getParameter("kg"));

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnionPurchaseDB", "root", "root");
            String sql = "INSERT INTO CustomerDetails (name, email, phone, address, pincode, city, district, oniontype, kg) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, address);
            ps.setString(5, pincode);
            ps.setString(6, city);
            ps.setString(7, district);
            ps.setString(8, onionType);
            ps.setInt(9, kg);
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("suc.html");
    }
}
