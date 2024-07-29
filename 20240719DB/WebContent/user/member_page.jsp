<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<HTML>
<HEAD>
<TITLE>회원 전용</TITLE>
</HEAD>

<META http-equiv="Content-Type" content="text/html; charset=euc-kr">

<BODY>

<center><font size='3'><b> 회원 전용 페이지 </b></font>

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>
<%
try {
	String strUser="yes";
	String strSession=session.getAttribute("user").toString();

	if(!strUser.equals(strSession)) {

%>

<TABLE cellSpacing='0' cellPadding='30' align='center' border='0'>
<TR>
	<TD align='center'>
	<font size='2'>로그인 하세요.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>
<%
	}
	else {
%>

<TR>
	<TD align='center'>
	<font size=2>회원 전용 페이지</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<font size=2>이 페이지는 회원에게만 제공되는 페이지입니다.<br/> 환영합니다.<br/></font>
	<a href="logout.jsp">[로그아웃]</a>
	</TD>
</TR>
<%
	}  //end else
} // end try
catch(Exception e){

%>

<TR>
	<TD align='center'>
	<font size='2'>로그인 하세요.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>

<%
}


%>


</TABLE>
</BODY>
</HTML>
