<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/history.css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />

        <div class="history">
            <table>
                <tr>
                    <th>Movie</th>
                    <th>Seat</th>
                    <th>Time</th>
                    <th>Date</th>
                </tr>
                <%
                    Connection conn = null;
                    Statement stmnt = null;
                    ResultSet rs = null;

                    String user = (String) session.getAttribute("user");

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                        stmnt = conn.createStatement();

                        String qry = "select * from payment where user_email = '" + user + "'";

                        rs = stmnt.executeQuery(qry);

                        while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><a href="#">Cancel Booking</a></td>
                </tr>

                <%
                        }
                    } catch (Exception e) {
                        out.print(e);
                    }
                %>
            </table>
        </div>
        <jsp:include page="components/footer.jsp" />
    </body>
</html>
