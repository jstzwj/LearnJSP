<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="shop.Item" %>
<jsp:useBean id="myCart" class="shop.ShopCart" scope="session" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String action=request.getParameter("action");
	if(action==null)
		action="";
	if(action.equals("buy")){
		ArrayList<Item> goodslist=(ArrayList<Item>)session.getAttribute("goodslist");
		int id=Integer.parseInt(request.getParameter("id"));
		Item single=(Item)goodslist.get(id);
		myCart.addItem(single);
		response.sendRedirect("show.jsp");
	}else if(action.equals("remove")){
		String name=request.getParameter("name");
		myCart.removeItem(name);
		response.sendRedirect("shopcar.jsp");
	}else if(action.equals("clear")){
		myCart.clearCart();
		response.sendRedirect("shopcart.jsp");
	}else{
		response.sendRedirect("show.jsp");
	}
%>

</body>
</html>