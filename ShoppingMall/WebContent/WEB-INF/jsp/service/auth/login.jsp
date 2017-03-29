<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="../common/script.jsp"/>
<body>
	<jsp:include page="../common/header.jsp"/>
    
<section id="form" style="margin-top: 3em; height: 455px;"><!--form-->
		<div class="container" style="margin-top: 5em;">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-2">
					<div class="login-form"><!--login form-->
						<h2>로그인</h2>
						<hr>
						<form>
							<input type="text" id="user_id" placeholder="아이디" />
							<input type="password" id="user_pwd" placeholder="비밀번호" />							
						</form>
						<button onclick="app.login()" class="btn btn-default">Login</button>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>회원가입 & 아이디/비밀번호 찾기</h2>
						<hr>
						<div align="center">
						<button class="btn btn-default" onclick="app.moveJoin()">회원가입</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">아이디/비밀번호 찾기</button>
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
