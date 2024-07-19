<%@page import="oracle.net.aso.l"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="common.css" rel="stylsheet" type="text/css"/>
<title>Insert title here</title>
</head>
<%

String sqlSelect="";
String key=request.getParameter("key");   //name
String keyword=request.getParameter("keyword"); //홍길동
//DB관련 //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
Class.forName(driver);    //1)외부파일을 가져오는(로딩) 방법
Connection conn=DriverManager.getConnection(url, user, password); //2)DB연동

//end DB

// 페이지 나누기 수업 //
String pageNum = request.getParameter("pageNum");
if(pageNum==null) {
	pageNum="1";
}

int listSize=5;
int currenPage=Integer.valueOf(pageNum);   //currenPage=1 , 2 , 3
int startRow=(currenPage-1)*listSize+1;   //startRow=1 , 6  , 11
int endRow=currenPage*listSize;            //endrow=5 , 10 , 15
int lastRow=0;
int i=0;

Statement stmt=conn.createStatement();
String strSql="select max(num) from tblboard";
ResultSet rs=stmt.executeQuery(strSql);
if(rs.next()) {
	lastRow=rs.getInt(1);         //가장큰 num값 출력 -> 1
}
%>

<body>
<h1>게시판</h1>
<a href="write.jsp">글쓰기</a>
<table border="1">
<tr><td>번호</td><td>글제목</td><td>작성자</td><td>작성일</td><td>조회</td></tr>
<%
if (lastRow > 0) 
{ 
//select * from tblboard where num between 1 and 5;
//select * from tblboard where num >= 1 and num <= 5;
//"select * from tblboard where num between "+ startRow +" and "+ endRow;
	if (key!=null ) {
		sqlSelect="select * from tblboard where "+key+" like "+"'%"+keyword+"%'" +
	" and num between "+ startRow +" and "+ endRow;
	}
	else {
		sqlSelect="select * from tblboard where num >= "+
	startRow +" and "+ "num <= " + endRow  + " order by num desc";
	}

	stmt = conn.createStatement();  // 3) 빈 문장통 
	rs=stmt.executeQuery(sqlSelect);  //4)rs결과통
 	
	for(i=0;i<listSize;i++){
		if(rs.next()){
			int num=rs.getInt("num");
			String name=rs.getString("name");
			String email=rs.getString("email");
			String title=rs.getString("title");
			String writedate=rs.getString("writedate");
			int readcount=rs.getInt("readcount");
%>
<tr>
<td><%=num %></td>
<td><a href="modify.jsp?num=<%=num %>">
<%=title%></a></td>
<td><%=name%></td>
<td><%=writedate%></td>
<td><%=readcount%></td></tr>
<%
	}
}
rs.close();
stmt.close();
conn.close();
}
%>
</table>
<form action="listboard.jsp" method="get">
검색:
<select name="key">
<option value="name">작성자</option>
<option value="email">이메일</option>
<option value="title">글제목</option>
<option value="contents">글내용</option>
</select>
<input type="text" name="keyword">
<input type="submit" value="검색">
</form>
<%
if(lastRow>0) {                    //lastRow=11 가정
	int setPage =1;
	int lastPage =0;
	if(lastRow % listSize ==0)     // 11 % 5 ==0 (x)
		lastPage =lastRow/listSize;  
	else
		lastPage =lastRow/listSize+1;  //lastPage =3
	if(currenPage > 1) {                //currenPage=2 현재커서의 위치가 2
%>
	<a href="listboard.jsp?pageNum=<%=currenPage-1%>">[이전]</a>
<%
	}
	while(setPage<=lastPage){
%>
	<a href="listboard.jsp?pageNum=<%=setPage%>">[<%=setPage %>]</a>
<%
	setPage=setPage+1;
	}
	if(lastPage> currenPage) {
%>
	<a href="listboard.jsp?pageNum=<%=currenPage+1%>">[다음]</a>
<%
	}
}
%>

</body>
</html>