<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="../common/script.jsp"/>
<body>
	<jsp:include page="../common/header.jsp"/>
    
	<section style="margin-top: 3em; height: 640px;">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="category-tab shop-details-tab" style="margin-bottom: 15px;"><!--category-tab-->
						<div class="tab-content">
							<div class="tab-pane fade active in" id="reviews" >
								<div class="col-xs-12">
									<p>&nbsp;</p>
									<p style="font-size: 19px;"><b>${qaVo.qa_title}</b></p>
									
									<form action="#">
										<textarea name="" readonly="readonly" >${qaVo.qa_content}</textarea>
									</form>
								</div>
							</div>
						</div>
					</div><!--/category-tab-->
					
					<c:if test="${sessionScope.sessionData.memberInfo.getMember_no() == qaVo.member_no}">
						<div style="margin-left: 3em; margin-right: 3em;" align="right">
							<button type="button" class="btn btn-success" onclick="app.modifyQa('${qaVo.qa_no}')">수정</button>
							<button type="button" class="btn btn-warning" onclick="app.qaDelete('${qaVo.qa_no}')">삭제</button>
						</div>
					</c:if>
					
					<div class="media commnets" style="margin-left: 3em; margin-right: 3em;">
						<a class="pull-left" href="#" style="font-size: 60px; margin-left: 0.5em;">
							<i class="fa fa-user-circle-o" aria-hidden="true"></i>
						</a>
						<div class="media-body">
							<div class="blog-socials">
								<textarea name="" readonly="readonly" placeholder="답변이 등록되지 않았습니다." style="color: black !important;">${qaVo.qa_answer}</textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    <jsp:include page="../common/footer.jsp"/>
<script type="text/javascript">
	function App() {
	    var _this = this;

	    //수정 페이지 이동
	    _this.modifyQa = function(qa_no){
	    	location.href="/main/qa/modify.do?qa_no="+qa_no;
	    }
	    
	    // 삭제
	    _this.qaDelete = function(qa_no){
	    	var params = "qa_no="+qa_no;
	 		$.ajax({
	 	        type        : "GET"  
	 	      , async       : false 
	 	      , url         : "/main/qa/qaDelete.do"
	 	      , data        : params
	 	      , dataType    : "json" 
	 	      , timeout     : 30000
	 	      , cache       : false     
	 	      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
	 	      , error       : function(request, status, error) {
	 				alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
	 	      }
	 	      , success     : function(data) {
	 	    	  alert("문의가 삭제 되었습니다.");
	 	    	  location.href="/main/qa.do"
	 	      }
	     	});
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
