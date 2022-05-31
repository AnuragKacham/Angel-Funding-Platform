<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String username=request.getParameter("username");
         
          
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("update investor set status='accpted' where username='"+username+"'  ");
       
     
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("vinvest.jsp?m1=accept_success"); 
      }
      else{
          response.sendRedirect("vinvest.jsp?m2=accept_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
