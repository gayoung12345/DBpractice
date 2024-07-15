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
<h1>글쓰기 DB로 저장되는 파일</h1>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String title=request.getParameter("title");
String contents=request.getParameter("contents");
// 출력방법 1
//out.print(name+", "+pass+", "+email+", "+title+", "+contents);
%>
<!-- 출력방법2 -->
<!-- 
<%=name %>
<%=pass %>
<%=email %>
<%=title %>
<%=contents %>
 -->
<%
// DB관련
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlInsert="insert into tblboard(num, name, pass, email, title, contents, writedate, readcount) values(num_seq.nextval,?,?,?,?,?,?,?)";
Class.forName(driver); // 외부 파일을 가져오는(loading) 방법 
Connection conn= DriverManager.getConnection(url, user, password); // DB연동
System.out.print("DB 성공");

PreparedStatement pstmt = conn.prepareStatement(sqlInsert); // 비여있는 스키마 createstatement, 준비되어 있는 스키마 preparedstatement 

// 날짜 정보
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

pstmt.setString(1, name); 		// 첫번째 ?에 name값을 저장
pstmt.setString(2, pass); 		// 두번째 ?에 pass값을 저장
pstmt.setString(3, email); 		// 세번째 ?에 email값을 저장
pstmt.setString(4, title); 		// 네번째 ?에 title값을 저장
pstmt.setString(5, contents); 	// 다섯번째 ?에 contents값을 저장
pstmt.setString(6, writedate); 	// 여섯번째 ?에 writedate값을 저장
pstmt.setInt(7, 0); 			// 일곱번째 ?에 0 값을 저장

int rs = pstmt.executeUpdate(); // 실행
// pstmt.executeQuery();
if (rs==1) {
	out.print("성공");
} else {
	out.print("실패");
}

response.sendRedirect("index.jsp"); // request:요청  response:응답 
%>
</body>
</html>