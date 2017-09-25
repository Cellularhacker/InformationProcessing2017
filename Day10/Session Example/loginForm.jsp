<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>loginForm.jsp</title>
</head>
<body>
	<h2>로그인</h2>
	
	<form method="post" action="loginOk.jsp">
		<table>
			<tr>
				<td>아이디: </td>
				<td><input type="text" name="userId"></td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="password" name="userPasswd"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인">&nbsp; <input type="submit" value="회원가입"></td>
			</tr>
		</table>
	</form>
</body>
</html>