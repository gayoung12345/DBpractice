<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<HTML>
<HEAD>
<TITLE>ȸ�� ����</TITLE>
</HEAD>

<META http-equiv="Content-Type" content="text/html; charset=euc-kr">

<BODY>

<center><font size='3'><b> ȸ�� ���� ������ </b></font>

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
	<font size='2'>�α��� �ϼ���.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[�α���]</a>
	</TD>
</TR>
<%
	}
	else {
%>

<TR>
	<TD align='center'>
	<font size=2>ȸ�� ���� ������</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<font size=2>�� �������� ȸ�����Ը� �����Ǵ� �������Դϴ�.<br/> ȯ���մϴ�.<br/></font>
	<a href="logout.jsp">[�α׾ƿ�]</a>
	</TD>
</TR>
<%
	}  //end else
} // end try
catch(Exception e){

%>

<TR>
	<TD align='center'>
	<font size='2'>�α��� �ϼ���.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[�α���]</a>
	</TD>
</TR>

<%
}


%>


</TABLE>
</BODY>
</HTML>
