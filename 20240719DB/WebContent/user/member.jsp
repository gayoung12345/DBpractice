<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><font size='3'><b>회원 인증 </b></font>

<hr size='1' noshade>

<FORM Name='Member' action="member_ok.jsp" method="get"> 
<TABLE align=center width='300' border='0' cellpadding='10' cellspacing='0'>
<TR>
	<TD bgcolor='cccccc' align='right'>
		<font size='2'>ID :</font>
	</TD>
	<TD bgcolor='cccccc' align='center'>
		<input type=text maxlength=10 size=10 name='id'>
	</TD>
	<TD bgcolor='cccccc' align='left'>
		<input type='submit' value='로그인'>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='right'>
		<font size='2'>비밀 번호 :
	</TD>
	<TD bgcolor='cccccc' align='center'>
		<input type='password' maxlength='10' size='10' name='pass'>
	</TD>
	<TD bgcolor='cccccc'>
		<font size='2'> <a href="member_input.jsp">[회원가입]</a> </font>
	</TD>
</TR>
</TABLE>

</FORM>
</body>
</html>