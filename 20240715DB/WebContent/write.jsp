<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�Խ��� �۾���</h1>
<hr/>
<form action="wrtie_input.jsp" method="get">
<table border="1">
<tr><td>�ۼ���</td><td><input type="text" name="name"></td></tr>
<tr><td>��й�ȣ</td><td><input type="password" name="pass"></td></tr>
<tr><td>E-mail</td><td><input type="email" name="email"></td></tr>
<tr><td>������</td><td><input type="text" name="title"></td></tr>
<tr><td>�۳���</td><td><textarea  name="contents" rows="" cols=""></textarea></td></tr>
<tr><td colspan="2"><input type="reset" value="�ٽ��ۼ�"><input type="submit" value="���"></td></tr>
</table>
</form>
</body>
</html>