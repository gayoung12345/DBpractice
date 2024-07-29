<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 창</title>
</head>
<body>
<form action="registerOk.jsp" method="get">
<table border="1">
	<tr>
	   <td colspan="2"> <h1> 내정보수정</h1>
	                     '*' 표시항목은 필수 입력 항목입니다. </td>
	</tr>
	<tr>
	     <td> UserID </td>
	     <td> <input type="text" name="mem_uid" disabled="disabled"> * </td>
	</tr>
		<tr>
	     <td> 암호 </td>
	     <td> <input type="text" name="mem_pwd" > * </td>
	</tr>
		<tr>
	     <td> 암호확인 </td>
	     <td> <input type="text" name="mem_pwd2" > * </td>
	</tr>
		<tr>
	     <td> 이름</td>
	     <td> <input type="text" name="mem_name" disabled="disabled"> * </td>
	</tr>
		<tr>
	     <td>E-mail </td>
	     <td> <input type="text" name="mem_email" > * </td>
	</tr>
		<tr>
	     <td> 주소 </td>
	     <td> <input type="text" name="mem_addr" ></td>
	</tr>
	<tr>
	   <td colspan="2"> 
	      <input type="submit" value="수정">
	      <input type="reset" value="다시입력">
	      <input type="button" value="수정안함" onclick='history.back(-1);'>
	    </td>
	</tr>
</table>
</form>
</body>
</html>