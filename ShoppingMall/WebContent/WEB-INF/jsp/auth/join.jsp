<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="../common/script.jsp"/>
<body>
	<jsp:include page="../common/header.html"/>
    
    <!-- 페이지 내용 -->
    <div class="container col-md-6 col-md-offset-3" align="center">
    <div class="login-panel panel panel-info">
	    <div class="panel-heading">
	        <h2 class="panel-title">회원 가입</h2>
	    </div>
		<div class="panel-body">
			<fieldset>
			<form class="form-horizontal">
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">아이디</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="text" placeholder="아이디">
			    </div>
			    <div class="col-sm-2" align="left">
			    	<button type="button" class="btn btn-warning btn-sm">중복확인</button>
			    </div>		    
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">비밀번호</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="password" placeholder="비밀번호">
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">비밀번호 확인</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="password" placeholder="비밀번호">
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">이름</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="text" placeholder="">
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">생년월일</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="text" placeholder="">
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">성별</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="text" placeholder="">
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">주소</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="text" placeholder="">
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">전화번호</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="text" placeholder="">
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-1">&nbsp;</div>
			    <label class="col-sm-3 control-label">이메일</label>
			    <div class="col-sm-5">
			      <input class="form-control" id="" type="text" placeholder="">
			    </div>
			  </div>
			</form>
			</fieldset>
		</div>
		<div style="margin-bottom: 1.5em;">
		  <button type="button" class="btn btn-info">회원가입</button>
		  <button type="button" class="btn btn-default">취소</button>
		</div>
	</div>
	</div>
</body>
</html>
