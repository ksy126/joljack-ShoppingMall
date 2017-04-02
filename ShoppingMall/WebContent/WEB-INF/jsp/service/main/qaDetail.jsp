<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
					<div class="category-tab shop-details-tab"><!--category-tab-->
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
