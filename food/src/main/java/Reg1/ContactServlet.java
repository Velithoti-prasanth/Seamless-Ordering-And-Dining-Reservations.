package Reg1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ContactttServlet")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        
        String url = "jdbc:mysql://localhost:3306/food";
        String user = "root";
        String password = "9182169942";  

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");

            
            conn = DriverManager.getConnection(url, user, password);

            
            String sql = "INSERT INTO contact_form (name, email, message) VALUES (?, ?, ?)";

            pstmt = conn.prepareStatement(sql);


            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, message);

            
            int result = pstmt.executeUpdate();

            
            if (result > 0) {
            	 response.sendRedirect("contactsuccess.jsp");
            } else {
                out.println("<h2>Error in sending message. Please try again later.</h2>");
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<h2>Driver error: " + e.getMessage() + "</h2>");
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h2>Database error: " + e.getMessage() + "</h2>");
        } finally {
           
            try {
                if (pstmt != null && !pstmt.isClosed()) pstmt.close();
                if (conn != null && !conn.isClosed()) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
