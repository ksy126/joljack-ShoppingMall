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
									<p style="font-size: 19px;"><b>${noticeVo.notice_title}</b></p>
									
									<form action="#">
										<textarea name="" readonly="readonly" >${noticeVo.notice_content}</textarea>
									</form>
								</div>
							</div>
						</div>
					</div><!--/category-tab-->
				</div>
			</div>
		</div>
	</section>
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>
