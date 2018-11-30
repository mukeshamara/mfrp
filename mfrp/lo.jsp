<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h2> welcome user : ${sessionScope.xyz.userid}</h2>
		
		<form action="search.jsp" method="post">
		Search here:
		 <select name="item">
  <option value="searchone" name="searched">search one</option>
  <option value="comics" name="searched">comics</option>
  <option value="romance" name="searched">romance</option>
  <option value="thriller" name="searched">thriller</option>
  <option value="emotion" name="searched">emotion</option>
</select>
<button type="submit" name="searchcategory" class="btn btn-primary">Search</button>
		</form>
	
	
</body>
</html>