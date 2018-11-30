<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home Page</title>

</head>
 

<body>
<%--
<% 
User name=(User)session.getAttribute("xyz"); 
		
out.print("Hello User: You have entered the name: "+name);
%>
 --%>
 <h2> welcome user : ${sessionScope.xyz.userid}</h2>
		Search here: 
		 <select name="item">
  <option value="searchone" name="searched">search one</option>
  <option value="comics" name="searched">comics</option>
  <option value="romance" name="searched">romance</option>
  <option value="thriller" name="searched">thriller</option>
  <option value="emotion" name="searched">emotion</option>
</select>
<button type="submit" name="searchcategory" class="btn btn-primary">Search</button>
		

    <sql:setDataSource driver="com.mysql.jdbc.Driver"

            url="jdbc:mysql://localhost:3306/mfrppro"

            user="root" password="root"

            var="mysrc"

    />

   

 

    <sql:query var="stmt" dataSource="${mysrc}">

        select * from product where category_name='${param.item}';

    </sql:query>
    <form action="cart.do" method="post">

    <table border='1'>

        <tr>

           <th>click here</th> <th>User Id</th><th>User Name</th><th>Address</th>

        </tr>

        <c:forEach var="rs" items="${stmt.rows}">
	
            <tr>
				<td><input  type="checkbox" name="book_id" value="${rs.book_id}"></td>
                <td>${rs.category_name}</td>

                <td>${rs.book_id}</td>
					
                <td>${rs.book_name}</td>
				<td>
				
		<td/>
            </tr>

        </c:forEach>
        
        	
			<input type="submit" value="Add to Cart"/>
		</form>

    </table>

  </body>

</html>




<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% User u=(User)request.getAttribute("xyz"); %>
		<h2> welcome user : ${sessionScope.xyz.userid}</h2>
		
		 Search here:
		<select>
  <option value="searchone" name="searched">search one</option>
  <option value="comics" name="searched">comics</option>
  <option value="romance" name="searched">romance</option>
  <option value="thriller" name="searched">thriller</option>
  <option value="emotion" name="searched">emotion</option>
</select>
<button type="submit" name="searchcategory" class="btn btn-primary">Search</button>
	
	<%--
		<% 
		List<product> plist=(List<product>) request.getAttribute("list");
		for(product p:plist){ %>
		<table border="1">
				<tr>
						<td align="left"></td>
						<td> p.getCat_name()</td>
		</table>
	 	<%= p.getCat_name(),"----",p.getCat_id(),"----",p.getBook_id(),"----",p.getBook_name(),"----",p.getLanguage(),"----",p.getPrice(),"----"
		,p.getBinding(),"----",p.getDelivery_time(),"----",p.getAuthor_name(),"----",p.getQuantity()%> 
		<% } %>
		<table width="59%" border="1">
		  <ul class="contain" >
		<%
		List<product> plist=(List<product>) request.getAttribute("list");
		for(product p:plist){ %>
		<li class="list-group-item">
		<div class="searched category books">
		<div class="col">
		
		<%--  <input type="radio" name="cart" value="<%= p.getBook_id() %>"><%= p.getBook_id() %> 
		<input type = \"radio\" name = \"cart\" value=\"True\"> True 
			<%= p.getCat_name() %>
		
			
			<%= p.getCat_id() %>
			
			<%= p.getBook_id() %>
		
			<%= p.getBook_name() %>
		
			<%= p.getLanguage() %>
		
			<%= p.getPrice() %>
		
			<%= p.getBinding() %>
		
			<%= p.getDelivery_time() %>
		
			<%= p.getAuthor_name() %>
		
			<%=p.getQuantity() %>
			<form action="cart.jsp" method="post">
			<input type="submit" value="Add to Cart"/>
		</form>
	
		</div>
		</div>
		</li>
		<% } %>
		</ul>
		
		
	</table>
	
</body>
</html>
--%>