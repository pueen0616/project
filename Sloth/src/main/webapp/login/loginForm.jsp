<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<!-- <link href="../plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<!-- <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"> -->
<!-- <link rel="stylesheet" href="../plugin/bootstrap/css/style.css"	media="screen" title="no title"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
<!-- <script src="../plugin/bootstrap/js/bootstrap.min.js"></script> -->
<!-- <script src="../config/js/login.js"></script> -->
<script type="text/javascript">
	function formCheck() {
		var f = document.frm;
		if(f.userid.value==""){
			alert("사용자 아이디를 입력하세요");
			f.userid.focus();
			return false;
		}
		if(f.password.value==""){
			alert("사용자 비밀번호 입력하세요");
			f.password.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<jsp:include page="../mainPage/mainMenu.jsp"></jsp:include>
	<div align="center">
		<form id="frm" name="frm" method="post" action="loginResult.do">
			<h1>로그인</h1>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user"></i></span> 
				<input type="text" id="userid" name="userid" placeholder="id을 입력하세요" class="id" />
			</div>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-lock"></i></span> 
				<input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" class="form-control" />
			</div>
			<br>
			<div align="center">
				<button type="submit" id="login-submit" onclick="return formCheck()">로그인</button>
				<hr>
			</div>
		</form>
			<span class='text-center'> 
				<a href="" class="find-id">아이디	찾기</a>&nbsp;&nbsp;
				<a href="" class="find-password">비밀번호 찾기</a></span>
			<div class="form-group">
				<a href="registerForm.do">회원가입</a>
			</div>
	</div>
</body>
</html>
