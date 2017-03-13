<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="../common/script.jsp"/>
<body>
	<jsp:include page="../common/header.jsp"/>
    
<section id="form" style="margin-top: 3em;"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-2">
					<div class="login-form"><!--login form-->
						<h2>로그인</h2>
						<hr>
						<form action="#">
							<input type="text" placeholder="아이디" />
							<input type="password" placeholder="비밀번호" />
							<button type="submit" class="btn btn-default">Login</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>회원가입 & 아이디/비밀번호 찾기</h2>
						<hr>
						<form action="#">
							<button type="submit" class="btn btn-default">회원가입</button>
							<br>
							<button type="submit" class="btn btn-default">아이디/비밀번호 찾기</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>
