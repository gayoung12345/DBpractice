<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String num=request.getParameter("num");
//out.print(num);
//DB���� //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlSelect="select * from tblboard where num=?";
Class.forName(driver);
Connection conn=DriverManager.getConnection(url, user, password);
PreparedStatement pstmt=conn.prepareStatement(sqlSelect);  //3)�غ�� ������
pstmt.setString(1, num);
ResultSet rs=pstmt.executeQuery();  //4)�غ�ȹ������� ������ ����� �����(rs)�� ����
rs.next();
%>

<body>
<h1>����ȭ��</h1>
<hr/>
<form action="modify_input.jsp" method="get">
<input type="hidden" name="num" value=<%=num%>>
<table border="1">
<tr><td>�ۼ���</td><td><input type="text" name="name" value=<%=rs.getString(2) %> disabled="disabled"></td></tr>
<tr><td>��й�ȣ</td><td><input type="password" name="pass" value=<%=rs.getString(3) %>></td></tr>
<tr><td>E-mail</td><td><input type="text" name="email" value=<%=rs.getString(4) %>></td></tr>
<tr><td>������</td><td><input type="text" name="title" value=<%=rs.getString(5) %>></td></tr>
<tr><td>�۳���</td><td><textarea name="contents" rows="" cols=""> <%=rs.getString(6) %> </textarea ></td></tr>
<tr><td colspan="2"><input type="reset" value="�ٽ��ۼ�">
                    <input type="submit" value="����">
                    <a href="del.jsp?num=<%=rs.getString(1)%>">�����ϱ�</a>
                    <a href="listboard.jsp">��Ϻ���</a>
                    </td></tr>
</table>
</form>
</body>
</html>