
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
    Connection co=null;
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
    co = databasecon.getconnection();
    Statement st = co.createStatement();
    ResultSet rs = st.executeQuery("select * from investor where username= '"+username+"' and password='"+password+"' and status='accpted' ");
    if(rs.next())
    {
     session.setAttribute("username", username);
   
    response.sendRedirect("ihome.jsp?msg=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("invest.jsp?msg1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in cloudlogact"+e.getMessage());
    }
%>





