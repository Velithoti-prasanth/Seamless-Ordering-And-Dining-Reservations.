package Reg1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/food";
    static final String USER = "root";
    static final String PASS = "9182169942";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection connection = null;

        try {
            // Load JDBC Driver
            Class.forName(JDBC_DRIVER);

            // Open a connection
            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            // Check user credentials
            String query = "SELECT * FROM food_db WHERE email = ? AND password = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    // Create session and redirect to landing page
                    HttpSession session = request.getSession();
                    session.setAttribute("user", email);
                    response.sendRedirect("landing.jsp");
                } else {
                    // Invalid credentials
                    response.setContentType("text/html");
                    response.getWriter().println(
                    	    "<html>" +
                    	        "<body style='margin: 0; display: flex; justify-content: center; align-items: center; height: 100vh; overflow: hidden; background-color: black;'>" +
                    	            "<div style='position: absolute; top: 0; left: 0; width: 100%; height: 100%; overflow: hidden;'>" +
                    	            "</div>" +
                    	            "<div style='position: relative; text-align: center; color: red;'>" +
                    	                "<h1>Login Failed</h1>" +
                    	                "<p>Invalid email or password</p>" +
                    	                "<button style='margin-top: 20px; padding: 10px 20px; background-color: green; border-radius: 5px; color: black; cursor: pointer;' onclick='window.location.href=\"login.jsp\"'>Continue</button>" +
                    	            "</div>" +
                    	        "</body>" +
                    	    "</html>"
                    );
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<html><body><h1>Login Failed</h1><p>Error: " + e.getMessage() + "</p></body></html>");
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
