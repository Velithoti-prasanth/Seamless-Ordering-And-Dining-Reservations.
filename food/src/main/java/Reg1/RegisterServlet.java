package Reg1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/food";
    static final String USER = "root";
    static final String PASS = "9182169942";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String dob = request.getParameter("dob");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");

        // Check if password and confirm password match
        if (!password.equals(confirmPassword)) {
            response.setContentType("text/html");
            response.getWriter().println("<html><body><h1>Passwords do not match!</h1></body></html>");
            return;
        }

        Connection connection = null;

        try {
            // Load JDBC Driver
            Class.forName(JDBC_DRIVER);

            // Open a connection
            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            // Check if the user already exists
            String checkUserQuery = "SELECT email FROM food_db WHERE email = ?";
            try (PreparedStatement checkUserStatement = connection.prepareStatement(checkUserQuery)) {
                checkUserStatement.setString(1, email);
                ResultSet resultSet = checkUserStatement.executeQuery();

                if (resultSet.next()) {
                    // User already exists
                    response.setContentType("text/html");
                    response.getWriter().println("<html><body><h1>User already exists!</h1></body></html>");
                } else {
                    // Insert user data into the database
                    String insertUserQuery = "INSERT INTO food_db (username, dob, email, password, address, phone) VALUES (?, ?, ?, ?, ?, ?)";
                    try (PreparedStatement insertStatement = connection.prepareStatement(insertUserQuery)) {
                        insertStatement.setString(1, username);
                        insertStatement.setString(2, dob);
                        insertStatement.setString(3, email);
                        insertStatement.setString(4, password);
                        insertStatement.setString(5, address);
                        insertStatement.setString(6, phone);

                        int rowsInserted = insertStatement.executeUpdate();
                        if (rowsInserted > 0) {
                            response.sendRedirect("success.jsp");
                        } else {
                            response.setContentType("text/html");
                            response.getWriter().println("<html><body><h1>Registration Failed</h1></body></html>");
                        }
                    }
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<html><body><h1>Registration Failed</h1><p>Error: " + e.getMessage() + "</p></body></html>");
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
