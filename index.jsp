﻿<html>  
	<head>
		<meta charset="utf-8"> 
	</head>
    <body>  
        <h1 align="center"> 加法测试 </h1>
		<%
			out.println("<table border=\"1\">");
			for(int i=1;i<=9;++i)
			{
				//ptint line
				out.println("<tr>");
				for(int j = 1;j <= 9 && j <= i;++j)
				{
					out.println("<th>");
					out.print(String.format("%d×%d=%d", i, j, i * j));
					out.println("</th>");
				}
				out.println("</tr>");
			}
			out.println("</table>");
		%>
		<%
			java.util.Random rand =new java.util.Random();
			int a = rand.nextInt(100);
			int b = rand.nextInt(100);
			Boolean isCorrect = (Boolean)session.getAttribute("isCorrect");
			if(isCorrect != null && isCorrect == false )
			{
				out.println("您上一题答错了，请重做</p>");
				a = (Integer)session.getAttribute("leftNum");
				b = (Integer)session.getAttribute("rightNum");
			}
			else
			{
				a = rand.nextInt(100);
				b = rand.nextInt(100);
				session.setAttribute("leftNum", a);
				session.setAttribute("rightNum", b);
			}
			session.setAttribute("isCorrect",  new Boolean(true));
			out.print(String.format("%d+%d等于多少?", a, b));
		%>
        <form method="POST" action="doArithmetic.jsp">  
            <input type="text" name="result"/>
            </br></br></br></br>
            <center>  
                <input type="SUBMIT">  
            </center>   
          
        </form>  
    </body>  
</html>