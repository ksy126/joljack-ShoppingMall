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
		              <button type="submit" class="btn btn-default">회원가입 &nbsp;<i class="fa fa-check spaceLeft"></i></button>
		              <button type="submit" class="btn btn-default">가입취소 &nbsp;<i class="fa fa-times spaceLeft"></i></button>
		            </div>
		        </div>
	        </form>
	        <hr>
        </div>
      </article>
	</section><!--/form-->
	<jsp:include page="../common/footer.jsp"/>
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
