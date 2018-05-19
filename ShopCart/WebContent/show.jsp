<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="shop.Item" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%  ArrayList<Item> goodslist = (ArrayList<Item>)session.getAttribute("goodslist");%>
<table border="1" width="450" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="3" align="center">here are goods</td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td>name</td>
		<td>price</td>
		<td>buy</td>
	</tr>
	<% if(goodslist==null||goodslist.size()==0){ %>
	<tr height="100"><td colspan="3" align="center">no items</td></tr>
	<%
	}else{
		for(int i=0;i<goodslist.size();++i){
			Item single=(Item)goodslist.get(i);
	%>
	<tr height="50" align="center">
		<td><%=single.getName() %></td>
		<td><%=single.getPrice() %></td>
		<td><a href="docart.jsp?action=buy&id=<%=i %>">buy</a></td>
	</tr>
	<%
		}
	} %>
	<tr height="50">
		<td align="center" colspan="3"><a href="shopcart.jsp">show cart</a></td>
	</tr>
</table>
</table>

</body>
</html>