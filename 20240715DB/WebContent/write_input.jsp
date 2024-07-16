<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*, java.util.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>글쓰기DB로 저장되는 파일</h1>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String title=request.getParameter("title");
String contents=request.getParameter("contents");
//out.print(name+","+pass+","+email+","+title+","+contents);
// DB관련 //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlInsert="insert into tblboard(num, name,pass,email,title,contents,writedate,readcount) values(num_seq.nextval,?,?,?,?,?,?,?)";
Class.forName(driver);    //1)외부파일을 가져오는(로딩) 방법
Connection conn=DriverManager.getConnection(url, user, password); //2)DB연동
// endDB관련 //

PreparedStatement pstmt=conn.prepareStatement(sqlInsert);   //3) 준비된통 preparedstatement

// 날짜정보 생성하기 //
Calendar sysCal=Calendar.getInstance();
String writedate=Integer.toString(sysCal.get(Calendar.YEAR))+"-";
writedate=writedate+Integer.toString(sysCal.get(Calendar.MONTH)+1)+"-";
writedate=writedate+Integer.toString(sysCal.get(Calendar.DATE))+" ";
writedate=writedate+Integer.toString(sysCal.get(Calendar.HOUR))+":";
writedate=writedate+Integer.toString(sysCal.get(Calendar.MINUTE))+":";
writedate=writedate+Integer.toString(sysCal.get(Calendar.SECOND));
// end날짜정보 생성하기 //


pstmt.setString(1,name);  //1번? 에  name값을 저장
pstmt.setString(2,pass); 
pstmt.setString(3,email); 
pstmt.setString(4,title);  
pstmt.setString(5,contents); 
pstmt.setString(6,writedate); 
pstmt.setInt(7,0); 
pstmt.executeUpdate();  // 4)실행

response.sendRedirect("index.jsp"); //request(요청)/response(응답)
%>



</body>
</html>