<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../common/script.jsp"/>
</head>

<body>
	<jsp:include page="../common/header.jsp"/>
	
		<div style="margin-bottom: 3em;">
			<div id="slider-carousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
					<li data-target="#slider-carousel" data-slide-to="1"></li>
					<li data-target="#slider-carousel" data-slide-to="2"></li>
				</ol>
				
				<div class="carousel-inner">
					<div class="item active">
						<img src="<%=cp%>/images/mainSlider/slide01.jpg" style="width: 100%; height: 300px;">
					</div>
					<div class="item">
						<img src="<%=cp%>/images/mainSlider/slide02.jpg" style="width: 100%; height: 300px;">
					</div>
					<div class="item">
						<img src="<%=cp%>/images/mainSlider/slide03.jpg" style="width: 100%; height: 300px;">
					</div>
				</div>
				
				<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
					<i class="fa fa-angle-left"></i>
				</a>
				<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
					<i class="fa fa-angle-right"></i>
				</a>
			</div>
		</div>
	
	<section>
		<div class="container">
			<div class="row">				
				<div class="col-xs-12">
					<div class="features_items">				
						<div class="col-xs-6">
							<h2 class="title text-center">NOTICE</h2>
							<br>
							<br>
							<br>
							<br>
						</div>
						<div class="col-xs-6">
							<h2 class="title text-center">Q & A</h2>
							<br>
							<br>
							<br>
							<br>
						</div>
					</div>
					
					
					<!--new_items-->
					<div class="features_items">
						<h2 class="title text-center">NEW Items</h2>
						<c:forEach var="row" items="${newItemList}">
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center" onclick="navi.detailsPage('${row.product_no}')">
										<img src="/upload/img/${row.p_img}" alt="" />
										<p>${row.p_name}</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i>${row.p_price}</h2>										
									</div>
								</div>
							</div>
						</div>
						</c:forEach>								
					</div>
					<!--new_items-->
					
					
					<!--best_items-->
					<div class="features_items">
						<h2 class="title text-center">BEST Items</h2>
						<c:forEach var="row" items="${bestItemList}">
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center" onclick="navi.detailsPage('${row.product_no}')">
										<img src="/upload/img/${row.p_img}" alt="" />
										<p>${row.p_name}</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i>${row.p_price}</h2>										
									</div>
								</div>
							</div>
						</div>
						</c:forEach>				
					</div>
					<!--best_items-->
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
<script>
$(document).ready(function(){
	// 팝업 열기
	openPopup();
});
/**
 * 팝업 열기
 * @param {String} url 			- 팝업 URL
 * @param {Number} width 		- 팝업 Width
 * @param {Number} height 		- 팝업 Height
 */
function openPopup() {
	 var url = '/main/popup.do';
	 var popupName = 'mainPop';
	 var width = 414;
	 var height = 400;
	 
	 var posX = (screen.availWidth - width) / 2;
	 var posY = (screen.availHeight - height) / 2;	 
	 
	 var check = window.open(url, popupName,'width=' + width + ', height=' + height + ', left=' + posX + ', top=' + posY +', location=no, staus=no');
	 //창이 열려 있는지 check
	 if(check){
		check.focus(); 
	 } else {
		 window.open(url, popupName,'width=' + width + ', height=' + height + ', left=' + posX + ', top=' + posY +', location=no, staus=no');
	 }
};
</script>
</html>