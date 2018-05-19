<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="shop.Item"%>

<%!
	static ArrayList<Item> goodslist=new ArrayList<Item>();
	static{
		String[] names = {"apple", "banana", "pear", "orange"};
		float[] prices={2.8f, 3.1f, 2.5f, 2.3f};
		for(int i = 0; i<4;++i){
			Item single = new Item();
			single.setName(names[i]);
			single.setPrice(prices[i]);
			single.setNum(1);
			goodslist.add(i, single);
		}
	}


%>

<%
	session.setAttribute("goodslist", goodslist);
	response.sendRedirect("shop.jsp");
%>