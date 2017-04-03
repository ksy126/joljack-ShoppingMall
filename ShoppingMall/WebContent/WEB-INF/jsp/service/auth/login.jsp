<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="../common/script.jsp"/>
<body>
	<jsp:include page="../common/header.jsp"/>
    
<section id="form" style="margin-top: 1em; height: 400px; margin-bottom: 100px; margin-left: -5em;"><!--form-->
		<div class="container" style="margin-top: 2em;">
			<div class="row">
				<h3 style="margin-left: 3em; margin-right: 3em;">LOGIN</h3>
				<hr style="margin-left: 3em; margin-right: 3em;">
				<div class="col-sm-5 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2 style="margin-bottom: 5px !important;"><strong>회원 로그인</strong></h2>
						<span>회원 아이디와 비밀번호를 입력하세요</span>
						<hr>
						<form>
							<input type="text" id="user_id" placeholder="아이디" />
							<input type="password" id="user_pwd" placeholder="비밀번호" />							
						</form>
						<button onclick="app.login()" class="btn btn-primary btn-block">Login</button>
					</div><!--/login form-->
				</div>
				<div class="col-sm-5 col-sm-offset-1">
					<div class="signup-form"><!--sign up form-->
						<h2><strong>아직 UPNORMAL 회원이 아니신가요?</strong></h2>
						<div align="center">
						<button class="btn btn-primary btn-block" onclick="app.moveJoin()">회원가입 바로가기</button>
						</div>
						<hr>
					</div><!--/sign up form-->
					<div class="signup-form"><!--sign up form-->
						<h2><strong>아이디/비밀번호를 잊으셨나요?</strong></h2>
						<div align="center">
						<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">아이디/비밀번호 찾기</button>
						</div>
						<hr>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">아이디 / 비밀번호 찾기</h4>
        </div>
        <div class="modal-body">
            <p>회원 가입시 입력한 휴대폰 전화를 입력해 주세요.</p>
			<div class="form-horizontal">
				<div class="form-group">
				  <div class="col-sm-12">
		            <div class="input-group">
		              <input class="form-control" id="userPhone" type="number" placeholder="Phone">
		              <span class="input-group-btn">
		                <button class="btn btn-success" type="button" onclick="app.searchUserInfo()">찾기 &nbsp;<i class="fa fa-edit spaceLeft"></i></button>
		              </span>
		            </div>
		          </div>
				</div>
			</div>
			<hr>
			<div class="form-horizontal" id="userInfoConfirm" style="display: none;">
				<div class="form-group">
		            <label class="col-sm-3 control-label" for="inputPassword">아이디</label>
			        <div class="col-sm-9">
			          <input class="form-control" id="userIdInfo" type="text" readonly="readonly">
			        </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
			        <div class="col-sm-9">
			          <input class="form-control" id="userPwdInfo" type="text" readonly="readonly">
			        </div>
		        </div>
			</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
	
	
	
	<jsp:include page="../common/footer.jsp"/>
<script type="text/javascript">
function App() {
    var _this = this;
    
    _this.searchUserInfo = function() {
    	var phone = $('#userPhone').val();
    	
    	if(phone.trim() == ''){
    		alert("가입시 입력한 Phone 정보를 입력 하세요.")
    		return false;
    	} else {
    		var params = "phone="+phone;
    		$.ajax({
    	        type        : "GET"  
    	      , async       : false 
    	      , url         : "/auth/searchUserInfo.do"
    	      , data        : params
    	      , dataType    : "json" 
    	      , timeout     : 30000
    	      , cache       : false     
    	      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
    	      , error       : function(request, status, error) {
    				alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
    	      }
    	      , success     : function(data) {
    	    	  if(data.memberVo == null) {
    	    		  alert("일치하는 정보가 없습니다.");
    	    		  $('#userInfoConfirm').hide();
    	    	  } else {
    	    		  $('#userInfoConfirm').show();
    	    		  $('#userIdInfo').val(data.memberVo.user_id);
    	    		  $('#userPwdInfo').val(data.memberVo.user_pwd);
    	    	  }
    	    	 
    	      }
        	});
    	}
    };
    
    _this.moveJoin = function() {
    	location.href="/auth/join.do";
    }
    
    _this.login = function() {
    	var user_id = $("#user_id").val();
    	var user_pwd = $("#user_pwd").val();
    	
    	if(user_id == null || user_id == ""){
    		alert("아이디를 입력 하세요.")
    		$("#user_id").focus();
    		return false;
    	} else if(user_pwd == null || user_pwd == ""){
    		alert("비밀번호를 입력 하세요.")
    		$("#user_pwd").focus();
    		return false;
    	} else {
    		var params = "user_id="+user_id+"&user_pwd="+user_pwd;
    		$.ajax({
    	        type        : "POST"  
    	      , async       : false 
    	      , url         : "/auth/userLogin.do"
    	      , data        : params
    	      , dataType    : "json" 
    	      , timeout     : 30000
    	      , cache       : false     
    	      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
    	      , error       : function(request, status, error) {
    				alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
    	      }
    	      , success     : function(data) {
    	    	  if(data.check == "no"){
    	    		  alert("아이디 또는 비밀번호가 일치하지 않습니다.");
    	    	  } else {
    	    		  alert("환영합니다");
    	    		  location.href = "/main/main.do";
    	    	  }			    	  
    	      }
        	});
    	}
    }
    
    // 이벤트 바인드
    _this.eventBind = function() {
        
    };
    
    // Init
    _this.init = function() {
        _this.eventBind();
    }();
}    
var app = new App();
</script>
</body>
</html>
