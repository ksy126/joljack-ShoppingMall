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
<article class="container">
        <div class="col-md-12">
	        <div class="page-header">
	    	    <h1>회원가입 <small>horizontal form</small></h1>
	        </div>
	        <form class="form-horizontal">
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumber">아이디</label>
		              <div class="col-sm-6">
		                <div class="input-group">
		                  <input type="tel" class="form-control" id="inputNumber" placeholder="아이디를 입력하세요" />
		                  <span class="input-group-btn">
		                    <button type="submit" class="btn btn-default">중복 확인 &nbsp;<i class="fa fa-mail-forward spaceLeft"></i></button>
		                  </span>
		                </div>
		              </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
			        <div class="col-sm-6">
			          <input class="form-control" id="inputPassword" type="password" placeholder="비밀번호">
			        </div>
		        </div>
	            <div class="form-group">
	            	<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
	            	<div class="col-sm-6">
	            		<input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
	                	<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
	          		</div>
	            </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputName">이름</label>
		          <div class="col-sm-6">
		            <input class="form-control" id="inputName" type="text" placeholder="이름">
		          </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
		              <div class="col-sm-6">
		                  <input type="tel" class="form-control" id="inputNumber" placeholder="- 없이 입력해 주세요" />
		              </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumberCheck">우편번호</label>
		          <div class="col-sm-6">
		            <div class="input-group">
		              <input class="form-control" id="inputNumberCheck" type="text" placeholder="우편번호">
		              <span class="input-group-btn">
		                <button class="btn btn-success" type="button">주소 검색 &nbsp;<i class="fa fa-edit spaceLeft"></i></button>
		              </span>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumber">주소</label>
		              <div class="col-sm-6">
		                  <input type="tel" class="form-control" id="inputNumber" placeholder="" />
		              </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumber">상세주소</label>
		              <div class="col-sm-6">
		                  <input type="tel" class="form-control" id="inputNumber" placeholder="" />
		              </div>
		        </div>
		        <div class="form-group">
		            <div class="form-group text-center">
		              <button type="submit" class="btn btn-default">회원가입 &nbsp;<i class="fa fa-check spaceLeft"></i></button>
		              <button type="submit" class="btn btn-default">가입취소 &nbsp;<i class="fa fa-times spaceLeft"></i></button>
		            </div>
		        </div>
	        </form>
	        <hr>
        </div>
      </article>
	</section><!--/form-->
</body>
</html>
