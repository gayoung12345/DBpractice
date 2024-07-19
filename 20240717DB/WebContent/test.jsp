<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Calendar sysCal=Calendar.getInstance();
String writedate=Integer.toString(sysCal.get(Calendar.YEAR))+"-";
writedate=writedate+Integer.toString(sysCal.get(Calendar.MONTH)+1)+"-";
writedate=writedate+Integer.toString(sysCal.get(Calendar.DATE))+" ";
writedate=writedate+Integer.toString(sysCal.get(Calendar.HOUR))+":";
writedate=writedate+Integer.toString(sysCal.get(Calendar.MINUTE))+":";
writedate=writedate+Integer.toString(sysCal.get(Calendar.SECOND));
%>

<%=writedate %>
</body>
</html>