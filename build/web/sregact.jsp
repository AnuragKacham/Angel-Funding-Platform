<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String ryear=request.getParameter("ryear");
          //  String rollnumber=request.getParameter("rollnumber");
            String cweb=request.getParameter("cweb");
            String ament=request.getParameter("ament");
            String lp=request.getParameter("lp");
            String roc=request.getParameter("roc");
             String cname=request.getParameter("cname");
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into startup(username,password,ryear,cweb,ament,lp,roc,cname) values(?,?,?,?,?,?,?,?)");
        pst2.setString(1,username);
	pst2.setString(2,password);
        pst2.setString(3,ryear); 
        pst2.setString(4,cweb);
        pst2.setString(5,ament); 
        pst2.setString(6,lp); 
        pst2.setString(7,roc);
         pst2.setString(8,cname);
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("sup.jsp?m1=reg_success"); 
      }
      else{
          response.sendRedirect("sreg.jsp?m2=reg_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
