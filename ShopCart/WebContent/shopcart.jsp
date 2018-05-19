<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="shop.Item"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="myCart" class="shop.ShopCart" scope="session"/>

<%
	ArrayList buylist=myCart.getList();
	float total=0;
%>

<table border="1" width="450" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="5" align="center">items list</td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td width="25%">name</td>
		<td>price</td>
		<td>number</td>
		<td>remove</td>
	</tr>
	<%
		if(buylist==null||buylist.size()==0){
	%>
	<tr height="100"><td colspan="5" align="center">empty cart</td></tr>
	
	<%
		}else{
			for(int i=0;i<buylist.size();++i){
				Item single = (Item)buylist.get(i);
				String name = single.getName();
				float price=single.getPrice();
				int num=single.getNum();
				float money=((int)((price*num+0.05f)*10))/10.f;
				total+=money;
	%>
	<tr align="center" height="50">
		<td><%=name %></td>
		<td><%=price %></td>
		<td><%=num %></td>
		<td>
			<a href="docart.jsp?action=remove&name=<%=single.getName() %>">remove</a>
		</td>
	</tr>
	
	<%
			}
		}
	%>
	<tr height="50" align="center"><td colspan="5">money:<%=total %></td></tr>
	<tr height="50" align="center">
		<td colspan="2"><a href="shop.jsp">continue</a></td>
		<td colspan="3"><a href="docart.jsp?action=clear">clear</a></td>
</table>

</body>
</html>