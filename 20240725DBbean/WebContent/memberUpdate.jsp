<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ â</title>
</head>
<body>
<form action="registerOk.jsp" method="get">
<table border="1">
	<tr>
	   <td colspan="2"> <h1> ����������</h1>
	                     '*' ǥ���׸��� �ʼ� �Է� �׸��Դϴ�. </td>
	</tr>
	<tr>
	     <td> UserID </td>
	     <td> <input type="text" name="mem_uid" disabled="disabled"> * </td>
	</tr>
		<tr>
	     <td> ��ȣ </td>
	     <td> <input type="text" name="mem_pwd" > * </td>
	</tr>
		<tr>
	     <td> ��ȣȮ�� </td>
	     <td> <input type="text" name="mem_pwd2" > * </td>
	</tr>
		<tr>
	     <td> �̸�</td>
	     <td> <input type="text" name="mem_name" disabled="disabled"> * </td>
	</tr>
		<tr>
	     <td>E-mail </td>
	     <td> <input type="text" name="mem_email" > * </td>
	</tr>
		<tr>
	     <td> �ּ� </td>
	     <td> <input type="text" name="mem_addr" ></td>
	</tr>
	<tr>
	   <td colspan="2"> 
	      <input type="submit" value="����">
	      <input type="reset" value="�ٽ��Է�">
	      <input type="button" value="��������" onclick='history.back(-1);'>
	    </td>
	</tr>
</table>
</form>
</body>
</html>