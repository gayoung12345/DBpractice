<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String num=request.getParameter("num");
//out.print(num);
%>
<body>
<h1>����ȭ��</h1>
<form action="del_input.jsp" method="get">
<input type="hidden" name="num" value="<%=num%>">
<table border="1">
<tr> <td>��й�ȣ</td><td><input type="password" name="pass"> </td>
</tr>
<tr> <td colspan="2"> <input type="submit" value="����"> 
<input type="reset" value="�ٽ��Է�">
<a href="listboard.jsp">��Ϻ���</a>
</td>
</tr>
</table>
</form>

</body>
</html>