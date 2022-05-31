
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
    ResultSet rs = st.executeQuery("select * from startup where username= '"+username+"' and password='"+password+"'  ");
    if(rs.next())
    {
        String cname=rs.getString(8);
     session.setAttribute("username", username);
     session.setAttribute("cname", cname);
   
    response.sendRedirect("shome.jsp?msg=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("sup.jsp?msg1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in cloudlogact"+e.getMessage());
    }
%>





