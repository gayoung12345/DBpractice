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
		alert("ID�� �������� �ʽ��ϴ�");
		return false;
	}
	if(isNull(form.pass,'��ȣ�� �Է����ּ���')) {
		return false;
	}
	if(!isSSN(form.ju1, form.ju2)) {
		alert("�ֹι�ȣ�� ���� �ʽ��ϴ�");
		return false;
	}
}
</script>
</head>
<body>
<form action="result.jsp" method="post" onSubmit="return check(this)">
���̵�:<input type="text" name="id"><br/>
��ȣ:<input type="password" name="pass"><br/>
�ֹι�ȣ:<input type="text" name="ju1">-<input type="text" name="ju2">
<input type="submit" value="����"><br/>
</form>
</body>
</html>