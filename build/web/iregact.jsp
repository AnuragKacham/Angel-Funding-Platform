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
            String dob=request.getParameter("dob");
          //  String rollnumber=request.getParameter("rollnumber");
            String lp=request.getParameter("lp");
            String mobile=request.getParameter("mobile");
            String investedin=request.getParameter("investedin");
            String mini=request.getParameter("mini");
          //  String rollnumber=request.getParameter("rollnumber");
            String maxi=request.getParameter("maxi");
          
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into investor(username,password,dob,lp,mobile,investedin,mini,maxi,status) values(?,?,?,?,?,?,?,?,?)");
        pst2.setString(1,username);
	pst2.setString(2,password);
        pst2.setString(3,dob); 
        pst2.setString(4,lp);
        pst2.setString(5,mobile); 
        pst2.setString(6,investedin); 
        pst2.setString(7,mini);
        pst2.setString(8,maxi);
        pst2.setString(9,"pending");
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("invest.jsp?m1=reg_success"); 
      }
      else{
          response.sendRedirect("ireg.jsp?m2=reg_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
