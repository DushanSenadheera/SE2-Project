<%--<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>

<% 
    String merchant_id = request.getParameter("merchant_id");
    String order_id = request.getParameter("order_id");
    String currency = request.getParameter("currency");
    String email = request.getParameter("email");
    String price = request.getParameter("amount");
    String mobile = request.getParameter("phone");
    String[] checkboxValues = request.getParameterValues("items");
    String checkboxString = String.join(",", checkboxValues);

    String merchant_secret = "MzI0NDY2NTIxOTMxNTU2MDk0Mjg4NjM4MjMxMzMyODcyNjg2ODU=";
    
    Connection con = null;
    Statement st = null;

    

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
        st = con.createStatement();

        String qry = "insert into payment(user_email, user_mobile, user_seats, user_amount) values('" + email + "','" + mobile + "','" + checkboxString + "','" + price + "')";
        st.executeUpdate(qry);
        out.print("success!");

    } catch (Exception e) {
        out.print(e);
    }
%>--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.security.MessageDigest" %>

<%  
    
    out.print(request);
    String merchantId = request.getParameter("merchant_id");
    String orderId = request.getParameter("order_id");
    String payhereAmount = request.getParameter("payhere_amount");
    String payhereCurrency = request.getParameter("payhere_currency");
    String statusCode = request.getParameter("status_code");
    String md5sig = request.getParameter("md5sig");

    String merchantSecret = "MzI0NDY2NTIxOTMxNTU2MDk0Mjg4NjM4MjMxMzMyODcyNjg2ODU="; // Replace with your Merchant Secret (Can be found on your PayHere account's Settings page)

    MessageDigest md = MessageDigest.getInstance("MD5");
    md.update(merchantSecret.getBytes());
    byte[] digest = md.digest();
    StringBuffer hexString = new StringBuffer();
    for (int i = 0; i < digest.length; i++) {
        hexString.append(Integer.toHexString(0xFF & digest[i]));
    }
    String merchantSecretMd5 = hexString.toString().toUpperCase();

    String localMd5sig = (merchantId + orderId + payhereAmount + payhereCurrency + statusCode + merchantSecretMd5).toUpperCase();

    if ((localMd5sig.equals(md5sig)) && (statusCode.equals("2"))) {

        Connection con = null;
        Statement st = null;

        String email = request.getParameter("email");
        String price = request.getParameter("amount");
        String mobile = request.getParameter("phone");
        String[] checkboxValues = request.getParameterValues("items");
        String checkboxString = String.join(",", checkboxValues);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            st = con.createStatement();

            String qry = "insert into payment(user_email, user_mobile, user_seats, user_amount) values('" + email + "','" + mobile + "','" + checkboxString + "','" + price + "')";
            st.executeUpdate(qry);
            out.print("success!");

        } catch (Exception e) {
            out.print(e);
        }
    }
%>
