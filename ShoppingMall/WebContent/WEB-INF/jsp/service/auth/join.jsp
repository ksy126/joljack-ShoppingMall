<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="../common/script.jsp"/>
<body>
	<jsp:include page="../common/header.jsp"/>
<section id="form" style="margin-top: 1em; margin-bottom: 10px;"><!--form-->
<article class="container">
        <div class="col-md-12">
	        <div class="page-header">
	    	    <h1>회원가입 <small>horizontal form</small></h1>
	        </div>
	        <div class="form-horizontal">
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumber">아이디</label>
		              <div class="col-sm-6">
		                <div class="input-group">
		                  <input type="text" class="form-control" id="user_id" placeholder="아이디를 입력하세요" />
		                  <input type="hidden" value="false" id="idConfirm">
		                  <span class="input-group-btn">
		                    <button onclick="app.idCheck()" class="btn btn-default">중복 확인 &nbsp;<i class="fa fa-mail-forward spaceLeft"></i></button>
		                  </span>
		                </div>
		              </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
			        <div class="col-sm-6">
			          <input class="form-control" id="user_pwd" type="password" placeholder="비밀번호">
			        </div>
		        </div>
	            <div class="form-group">
	            	<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
	            	<div class="col-sm-6">
	            		<input class="form-control" id="user_pwd_confirm" type="password" placeholder="비밀번호 확인">
	                	<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
	          		</div>
	            </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputName">이름</label>
		          <div class="col-sm-6">
		            <input class="form-control" id="name" type="text" placeholder="이름">
		          </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
		              <div class="col-sm-6">
		              	<div class="input-group">
		                  <input type="tel" class="form-control" id="phone" placeholder="- 없이 입력해 주세요" />
		                  <input type="hidden" value="false" id="phoneConfirm">
		                  <span class="input-group-btn">
			                <button onclick="app.phoneCheck()" class="btn btn-default">중복 확인 &nbsp;<i class="fa fa-mail-forward spaceLeft"></i></button>
			              </span>
			            </div>
		                <p style="margin-left: 1em; margin-top: 0.3em;">입력한 휴대폰 번호는 [아이디/비밀번호] 찾기에 이용됩니다.</p>
		              </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumberCheck">우편번호</label>
		          <div class="col-sm-6">
		            <div class="input-group">
		              <input class="form-control" id="zip_code" type="text" placeholder="우편번호" readonly="readonly">
		              <span class="input-group-btn">
		                <button class="btn btn-success" type="button" onclick="daumPostcode()">주소 검색 &nbsp;<i class="fa fa-edit spaceLeft"></i></button>
		              </span>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumber">주소</label>
		              <div class="col-sm-6">
		                  <input type="text" class="form-control" id="address" placeholder="" readonly="readonly"/>
		              </div>
		        </div>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputNumber">상세주소</label>
		              <div class="col-sm-6">
		                  <input type="text" class="form-control" id="sub_address" placeholder="" />
		              </div>
		        </div>
		        <div class="form-group">
		            <div class="form-group text-center">
		              <button class="btn btn-default" onclick="app.memberInsertData()">회원가입 &nbsp;<i class="fa fa-check spaceLeft"></i></button>
		              <button class="btn btn-default">가입취소 &nbsp;<i class="fa fa-times spaceLeft"></i></button>
		            </div>
		        </div>
	        </div>
        </div>
      </article>
	</section><!--/form-->
	<jsp:include page="../common/footer.jsp"/>
<script type="text/javascript">
function App() {
    var _this = this;
    
    // ENV
    _this.env = {};
    _this.env.user_id = $('#user_id');
    _this.env.idConfirm = $('#idConfirm');
    _this.env.user_pwd = $('#user_pwd');
    _this.env.user_pwd_confirm = $('#user_pwd_confirm');
    _this.env.name = $('#name');
    _this.env.phone = $('#phone');
    _this.env.phoneConfirm = $('#phoneConfirm');
    _this.env.zip_code = $('#zip_code');
    _this.env.address = $('#address');
    _this.env.sub_address = $('#sub_address');
    
    _this.phoneCheck = function() {
    	var userPhone = _this.env.phone.val().trim();
    	
    	if(userPhone == ''){
    		alert("번호 입력 후 확인 해주세요.");
    		return false;
    	}
    	
    	var params = "phone="+userPhone;
    	
    	$.ajax({
		      type        : "POST"
		    , async       : true
		    , url         : "/auth/phoneCheck.do"
		    , data        : params
		    , dataType    : "json"
		    , timeout     : 30000  
		    , cache       : false
		    , success     : function(data) {
				if(data.isVaild){
					alert("사용할 수 있는 번호입니다.");
					_this.env.phoneConfirm.val(true);
					_this.env.phone.attr("readonly",true);
				} else {
					alert("이미 사용된 번호 입니다.");
					_this.env.phone.focus();
					_this.env.phoneConfirm.val(false);
				}
		    }
		    , error       : function(request, status, error) {
		        alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );       
		    }
		});
    };
    
    _this.idCheck = function() {
    	var userId = _this.env.user_id.val().trim();
    	
    	if(userId == ''){
    		alert("아이디 입력후 확인 해주세요.");
    		return false;
    	}
    	
    	var params = "user_id="+userId;
    	
    	$.ajax({
		      type        : "POST"
		    , async       : true
		    , url         : "/auth/idCheck.do"
		    , data        : params
		    , dataType    : "json"
		    , timeout     : 30000  
		    , cache       : false
		    , success     : function(data) {
				if(data.isVaild){
					alert("사용할 수 있는 아이디 입니다.");
					_this.env.idConfirm.val(true);
					_this.env.user_id.attr("readonly",true);
				} else {
					alert("이미 가입한 아이디 입니다.");
					_this.env.user_id.focus();
					_this.env.idConfirm.val(false);
				}
		    }
		    , error       : function(request, status, error) {
		        alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );       
		    }
		});
    	
    };
    
    _this.memberIsVaild = function() {
    	var isVaild = true;
    	
    	if(_this.env.user_id.val().trim() == ''){
    		alert("아이디를 입력해 주세요.");
    		_this.env.user_id.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	if(_this.env.idConfirm.val() == 'false') {
    		alert("아이디 중복 확인을 해주세요.");
    		_this.env.user_id.focus();
    		isVaild = false;
    		return isVaild;
    	};
    	
    	if(_this.env.user_pwd.val().trim() == ''){
    		alert("비밀번호를 입력해 주세요.");
    		_this.env.user_pwd.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	if(_this.env.user_pwd_confirm.val().trim() == ''){
    		alert("비밀번호를 확인해 주세요.");
    		_this.env.user_pwd_confirm.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	// 비밀번호 확인
    	var password = _this.env.user_pwd.val().trim();
    	var re_password = _this.env.user_pwd_confirm.val().trim();
    	if(password != re_password){
    		alert("비밀번호가 일치하지 않습니다.");
    		_this.env.user_pwd_confirm.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	if(_this.env.name.val().trim() == ''){
    		alert("이름을 입력해 주세요.");
    		_this.env.name.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	if(_this.env.phone.val().trim() == ''){
    		alert("전화번호를 입력해 주세요.");
    		_this.env.phone.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	if(_this.env.phoneConfirm.val() == 'false') {
    		alert("휴대폰 번호 중복 확인을 해주세요.");
    		_this.env.phone.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	if(_this.env.address.val().trim() == ''){
    		alert("주소를 입력해 주세요.");
    		_this.env.address.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	if(_this.env.sub_address.val().trim() == ''){
    		alert("상세 주소를 입력해 주세요.");
    		_this.env.sub_address.focus();
    		isVaild = false;
    		return isVaild;
    	}
    	
    	return isVaild;
    };
    
    // 회원 등록
    _this.memberInsertData = function() {
    	var isVaild = false;
    	
    	isVaild = _this.memberIsVaild();
    	
   		if(isVaild){
   			var params = {
	    		user_id : _this.env.user_id.val(),
	    		user_pwd : _this.env.user_pwd.val(),
	    		name : _this.env.name.val(),
	    	    phone : _this.env.phone.val(),
	    		zip_code : _this.env.zip_code.val(),
	    		address : _this.env.address.val(), 
	    		sub_address : _this.env.sub_address.val()
	    	};
   			
			$.ajax({
			      type        : "POST"
			    , async       : true
			    , url         : "/auth/joinData.do"
			    , data        : params
			    , dataType    : "json"
			    , timeout     : 30000  
			    , cache       : false
			    , success     : function(data) {
					alert("회원 가입이 완료 되었습니다.");
					location.href="/auth/login.do";
			    }
			    , error       : function(request, status, error) {
			        alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );       
			    }
			});
   		}
    	    
    };
    
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip_code').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sub_address').focus();
            }
        }).open();
    }
</script>
</body>
</html>
