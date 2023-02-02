<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Check Out</title>
        <style type="text/css">
            table { border: 0; }
            table td { padding: 10px; }
        </style>
    </head>
    <body>
        <%
    String email = request.getParameter("email");
    String movieName = request.getParameter("movieName");
    String date = request.getParameter("first_name");
    String time = request.getParameter("last_name");
    String price = request.getParameter("amount");
    int no = Integer.parseInt(request.getParameter("amount"));
    String mobile = request.getParameter("phone");
    String[] checkboxValues = request.getParameterValues("items");
    String checkboxString = String.join(",", checkboxValues);
%>
        <div align="center">
            <h1>Check Out</h1>
            <br/>
            <form action="authorize_payment" method="post" name="paymentform">
                <input type="hidden" name="date" value="<%= date %>"> 
                <input type="hidden" name="time" value="<%= time %>"> 
                <input type="hidden" name="seats" value="<%= checkboxString %>"> 
                <table>
                    <tr>
                        <td>Product/Service:</td>
                        <td><input type="text" name="product" value="<%= movieName %>" /></td>
                    </tr>
                    <tr>
                        <td>Sub Total:</td>
                        <td><input type="text" name="subtotal" value="0" /></td>
                    </tr>
                    <tr>
                        <td>Shipping:</td>
                        <td><input type="text" name="shipping" value="0" /></td>
                    </tr>    
                    <tr>
                        <td>Tax:</td>
                        <td><input type="text" name="tax" value="0" /></td>
                    </tr>    
                    <tr>
                        <td>Total Amount:</td>
                        <td><input type="text" name="total" value="<%= price %>" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Checkout" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
                    <script src="scripts/Payhere.js"></script> 
    </body>
</html>

