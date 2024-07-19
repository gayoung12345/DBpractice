<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="common.css" rel="stylsheet" type="text/css"/>
<script src="check.js"></script>
<script>
function check(form){
	if(!isID(form.id)){
		alert("ID가 적절하지 않습니다");
		return false;
	}
	if(isNull(form.pass,'암호를 입력해주세요')) {
		return false;
	}
	if(!isSSN(form.ju1, form.ju2)) {
		alert("주민번호가 옳지 않습니다");
		return false;
	}
}
</script>
</head>
<body>
<form action="result.jsp" method="post" onSubmit="return check(this)">
아이디:<input type="text" name="id"><br/>
암호:<input type="password" name="pass"><br/>
주민번호:<input type="text" name="ju1">-<input type="text" name="ju2">
<input type="submit" value="전송"><br/>
</form>
</body>
</html>