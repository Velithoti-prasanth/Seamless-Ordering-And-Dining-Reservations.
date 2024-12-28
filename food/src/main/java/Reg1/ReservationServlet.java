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
import java.sql.SQLException;

@WebServlet("/ReservationServletforTable")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/food";
    static final String USER = "root";
    static final String PASS = "9182169942";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String guests = request.getParameter("guests");

        Connection connection = null;

        try {
           
            Class.forName(JDBC_DRIVER);

            
            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            
            try (PreparedStatement insertStatement = connection.prepareStatement(
                    "INSERT INTO reservations (name, email, phone, date, time, guests) VALUES (?, ?, ?, ?, ?, ?)")) {
                insertStatement.setString(1, name);
                insertStatement.setString(2, email);
                insertStatement.setString(3, phone);
                insertStatement.setString(4, date);
                insertStatement.setString(5, time);
                insertStatement.setString(6, guests);

                int rowsInserted = insertStatement.executeUpdate();
                response.setContentType("text/html");

                if (rowsInserted > 0) {
                    response.getWriter().println(
                        "<html>" +
                        "<head>" +
                        "<style>" +
                        "body { margin: 0; display: flex; justify-content: center; align-items: center; height: 100vh; overflow: hidden; background-color: black; color: white; }" +
                        ".centered { text-align: center; }" +
                        "</style>" +
                        "</head>" +
                        "<body>" +
                        "<div class='centered'>" +
                        "<h1>Registration Successful</h1>" +
                        "</div>" +
                        "</body>" +
                        "</html>"
                    );
                } else {
                    response.getWriter().println("<html><body><h1>Table Registration Failed</h1></body></html>");
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<html><body><h1>Table Reserved Successfully</h1></body></html>");
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
