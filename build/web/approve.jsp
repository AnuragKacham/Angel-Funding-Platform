<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String username=request.getParameter("username");
         String filename=request.getParameter("filename");
          
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("update file set status='approved' where username='"+username+"' and filename='"+filename+"' ");
       
     
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("avf.jsp?m1=accept_success"); 
      }
      else{
          response.sendRedirect("avf.jsp?m2=accept_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
