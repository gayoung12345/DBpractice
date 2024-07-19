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
<h1>삭제화면</h1>
<form action="del_input.jsp" method="get">
<input type="hidden" name="num" value="<%=num%>">
<table border="1">
<tr> <td>비밀번호</td><td><input type="password" name="pass"> </td>
</tr>
<tr> <td colspan="2"> <input type="submit" value="삭제"> 
<input type="reset" value="다시입력">
<a href="listboard.jsp">목록보기</a>
</td>
</tr>
</table>
</form>

</body>
</html>