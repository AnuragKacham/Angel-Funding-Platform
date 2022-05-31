<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String name=request.getParameter("name");
         String username=session.getAttribute("username").toString();
          
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("update file set status2='requested' where username='"+username+"'  ");
       
     
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("vai.jsp?m1=req_success"); 
      }
      else{
          response.sendRedirect("vai.jsp?m2=req_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
