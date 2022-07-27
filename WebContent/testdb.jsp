<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hi from JSP
<%
String name=request.getParameter("t1");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
System.out.println(" Driver Found");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sece", "root", "root");
System.out.println("Connection Success");

Statement statement=con.createStatement();// to execute query from backend 
String query="INSERT INTO `sece`.`student` (`Name`) VALUES ('"+name+"')";
statement.executeUpdate(query);
System.out.println("Data inserted in DB ");

}
catch(Exception e)
{
	System.out.println("No Driver Found"+e);
}

%>



</body>
</html>