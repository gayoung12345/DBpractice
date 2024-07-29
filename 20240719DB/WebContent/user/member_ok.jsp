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
	<font size=2>ID와 비밀번호를 입력하세요.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>
<%
} else {   //id,pass입력했다면 DB의 id,pass를 조회한다


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
	<font size='2'>회원 ID가 아닙니다.</font>
	</TD>
</TR>
<TR>
	<TD align="center">
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>
<%
	} else {
		if (!pass.equals(logpass)){
%>

<TR>
	<TD align='center'>
	<font size=2>비밀번호가 일치하지 않습니다.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>

<%
		} else {      //id,pass가 DB에 저장된 id,pass가 일치하면
			session.setAttribute("user",sessionID);          //세션ID값(28Line "yes")을 user에 설정
			response.sendRedirect("member_page.jsp");        //페이지 이동
		}
	}
}

} catch(Exception e){
%>
<TR>
	<TD align="center">
	<font size='2'>회원 ID가 아닙니다.</font>
	</TD>
</TR>
<TR>
	<TD align="center">
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>
<%
}
%>

</TABLE>
</body>
</html>