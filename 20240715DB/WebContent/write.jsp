<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>게시판 글쓰기</h1>
<hr/>
<form action="wrtie_input.jsp" method="get">
<table border="1">
<tr><td>작성자</td><td><input type="text" name="name"></td></tr>
<tr><td>비밀번호</td><td><input type="password" name="pass"></td></tr>
<tr><td>E-mail</td><td><input type="email" name="email"></td></tr>
<tr><td>글제목</td><td><input type="text" name="title"></td></tr>
<tr><td>글내용</td><td><textarea  name="contents" rows="" cols=""></textarea></td></tr>
<tr><td colspan="2"><input type="reset" value="다시작성"><input type="submit" value="등록"></td></tr>
</table>
</form>
</body>
</html>