<%@page import="java.math.BigInteger"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.security.MessageDigest" %>

<%
                    String merchant_id = request.getParameter("merchant_id");
                    String order_id = request.getParameter("seatID");
                    String payhere_amount = request.getParameter("total");
                    String payhere_currency = "LKR";
                    String status_code = "2";
                    String md5sig = request.getParameter("md5sig");
                    String merchant_secret = request.getParameter("MzI0NDY2NTIxOTMxNTU2MDk0Mjg4NjM4MjMxMzMyODcyNjg2ODU=");
                    
                    out.print(payhere_amount);

                    String local_md5sig
                            = String.format("%032x",
                                    new BigInteger(1,
                                            MessageDigest.getInstance("MD5")
                                                    .digest((merchant_id + order_id + payhere_amount + payhere_currency + status_code
                                                            + String.format("%032x",
                                                                    new BigInteger(1,
                                                                            MessageDigest.getInstance("MD5").digest(merchant_secret.getBytes("UTF-8"))
                                                                    )
                                                            ).toUpperCase()).getBytes("UTF-8"))
                                    )
                            );

                    if ((local_md5sig.equalsIgnoreCase(md5sig)) && (status_code.equals(2))) {
                        response.getWriter().println("payment success");
                    }


                %>
