<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�۾��� DB�� ����Ǵ� ����</h1>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String title=request.getParameter("title");
String contents=request.getParameter("contents");
// ��¹�� 1
//out.print(name+", "+pass+", "+email+", "+title+", "+contents);
%>
<!-- ��¹��2 -->
<!-- 
<%=name %>
<%=pass %>
<%=email %>
<%=title %>
<%=contents %>
 -->
<%
// DB����
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlInsert="insert into tblboard(num, name, pass, email, title, contents, writedate, readcount) values(num_seq.nextval,?,?,?,?,?,?,?)";
Class.forName(driver); // �ܺ� ������ ��������(loading) ��� 
Connection conn= DriverManager.getConnection(url, user, password); // DB����
System.out.print("DB ����");

PreparedStatement pstmt = conn.prepareStatement(sqlInsert); // ���ִ� ��Ű�� createstatement, �غ�Ǿ� �ִ� ��Ű�� preparedstatement 

// ��¥ ����
String writedate="";
Calendar sysCal=Calendar.getInstance();
/*
out.print(sysCal.get(Calendar.YEAR));
out.print(sysCal.get(Calendar.MONTH)+1);
out.print(sysCal.get(Calendar.DATE));
out.print(sysCal.get(Calendar.HOUR));
out.print(sysCal.get(Calendar.MINUTE));
out.print(sysCal.get(Calendar.SECOND));
*/
writedate=Integer.toString(sysCal.get(Calendar.YEAR))+"-";
writedate=writedate+Integer.toString(sysCal.get(Calendar.MONTH)+1)+"-";
writedate=writedate+Integer.toString(sysCal.get(Calendar.DATE))+" ";
writedate=writedate+Integer.toString(sysCal.get(Calendar.HOUR))+":";
writedate=writedate+Integer.toString(sysCal.get(Calendar.MINUTE))+":";
writedate=writedate+Integer.toString(sysCal.get(Calendar.SECOND));
System.out.print(writedate);

pstmt.setString(1, name); 		// ù��° ?�� name���� ����
pstmt.setString(2, pass); 		// �ι�° ?�� pass���� ����
pstmt.setString(3, email); 		// ����° ?�� email���� ����
pstmt.setString(4, title); 		// �׹�° ?�� title���� ����
pstmt.setString(5, contents); 	// �ټ���° ?�� contents���� ����
pstmt.setString(6, writedate); 	// ������° ?�� writedate���� ����
pstmt.setInt(7, 0); 			// �ϰ���° ?�� 0 ���� ����

int rs = pstmt.executeUpdate(); // ����
// pstmt.executeQuery();
if (rs==1) {
	out.print("����");
} else {
	out.print("����");
}

response.sendRedirect("index.jsp"); // request:��û  response:���� 
%>
</body>
</html>