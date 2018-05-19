<%
try
{
	int left = (Integer)session.getAttribute("leftNum");
	int right = (Integer)session.getAttribute("rightNum");
	if (Integer.parseInt(request.getParameter("result")) == left + right)
	{
		session.setAttribute("isCorrect",  new Boolean(true));
	}
	else
	{
		session.setAttribute("isCorrect",  new Boolean(false));
	}
}
catch(Exception e)
{
	session.setAttribute("isCorrect",  new Boolean(false));
}
finally
{
	RequestDispatcher  rd = request.getRequestDispatcher("index.jsp");  
	rd.forward(request, response);
}

%>