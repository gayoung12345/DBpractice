<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<TABLE  border='0' cellSpacing='0' align='center' >

<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String sessionID = "yes";                    

try{

if (id == "" || pass == "") {
%>
<TR>
	<TD align='center'>
	<font size=2>ID�� ��й�ȣ�� �Է��ϼ���.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[�α���]</a>
	</TD>
</TR>
<%
} else {   //id,pass�Է��ߴٸ� DB�� id,pass�� ��ȸ�Ѵ�


	String strselect = "SELECT * FROM tblmember where id= ?";
	PreparedStatement pstmt = conn.prepareStatement(strselect);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();

	rs.next();

	String logid = rs.getString("id");
	String logpass = rs.getString("pass");

	if (!id.equals(logid)){
%>
<TR>
	<TD align="center">
	<font size='2'>ȸ�� ID�� �ƴմϴ�.</font>
	</TD>
</TR>
<TR>
	<TD align="center">
	<a href="member.jsp">[�α���]</a>
	</TD>
</TR>
<%
	} else {
		if (!pass.equals(logpass)){
%>

<TR>
	<TD align='center'>
	<font size=2>��й�ȣ�� ��ġ���� �ʽ��ϴ�.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[�α���]</a>
	</TD>
</TR>

<%
		} else {      //id,pass�� DB�� ����� id,pass�� ��ġ�ϸ�
			session.setAttribute("user",sessionID);          //����ID��(28Line "yes")�� user�� ����
			response.sendRedirect("member_page.jsp");        //������ �̵�
		}
	}
}

} catch(Exception e){
%>
<TR>
	<TD align="center">
	<font size='2'>ȸ�� ID�� �ƴմϴ�.</font>
	</TD>
</TR>
<TR>
	<TD align="center">
	<a href="member.jsp">[�α���]</a>
	</TD>
</TR>
<%
}
%>

</TABLE>
</body>
</html>