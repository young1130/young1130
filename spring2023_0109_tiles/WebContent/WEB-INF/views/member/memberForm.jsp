<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join!</title>
</head>
<body>
	<form action="memberIn" method="post">
		<table style="width: 80%; margin: auto;">
			<tr>
				<td>���̵�</td>
				<td><input type="text" name="id" id="id" maxlength="10"
					style="width: 130px"> <input type="button" value="�ߺ�Ȯ��"
					id="idChkBtn" style="width: 150px; font-size: 10px; height: 30px;">
				</td>
			</tr>
			<tr>
				<td colspan="2" id="target"></td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td><input type="password" name="pwd" maxlength="10"></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td colspan="2" id="target"><input type="submit" value="����">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>