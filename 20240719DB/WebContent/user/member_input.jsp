<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE> ȸ�� ��� </TITLE>
<BODY>
<center><font size='3'><b> ȸ�� ���� </b></font>
<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>

<FORM Name='Member_Input' method="get" action="member_output.jsp">

<TABLE  border='2' cellSpacing=0 cellPadding=5 align=center>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>�� �� ��</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxLength='10' size='10' name="id">
		<input type='button' value='ID �ߺ��˻�'>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>�� �� �� ȣ</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='password' maxLength='10' size='10' name="pass">
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>�� ��</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxLength='10' size='10' name="name">
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>�ֹε�Ϲ�ȣ</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' size='6' maxlength='6' name="juminnum1">-
		<input type='text' size='7' maxlength='7' name="juminnum2">
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>�� �� �� ȣ</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxlength='7' size='7' name='zip' name="zip">
		<input type='button' value='�����ȣ�˻�'>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>�� ��</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxlength='50' size='50' name="address1"><BR>
		<input type='text' maxlength='50' size='50' name="address2">
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>�� ȭ �� ȣ</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxlength='20' size='20' name="phone">
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>E - M a i l</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxlength='50' size='50' name="email">
	</TD>
</TR>
</TABLE>

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>

<TABLE>
<TR>
	<TD colspan='2' align='center'>
		<input type='submit' value='ȸ������'>
	</TD>
</TR>
</TABLE>
</FORM>
</BODY>
</HTML>