<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
							<li data-target="#slider-carousel" data-slide-to="3"></li>
							<li data-target="#slider-carousel" data-slide-to="4"></li>
							<li data-target="#slider-carousel" data-slide-to="5"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<img src="<%=cp%>/images/mainSlider/slide-1.png" style="width: 90%;">
							</div>
							<div class="item">
								<img src="<%=cp%>/images/mainSlider/slide-2.png" style="width: 90%;">
							</div>
							<div class="item">
								<img src="<%=cp%>/images/mainSlider/slide-3.png" style="width: 90%;">
							</div>
							<div class="item">
								<img src="<%=cp%>/images/mainSlider/slide-4.png" style="width: 90%;">
							</div>
							<div class="item">
								<img src="<%=cp%>/images/mainSlider/slide-5.png" style="width: 90%;">
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
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">				
				<div class="col-sm-12">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">BEST Items</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>구매</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>찜하기</a></li>
										<li><a href="#"><i class="fa fa-plus-square"></i>장바구니</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>구매</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>찜하기</a></li>
										<li><a href="#"><i class="fa fa-plus-square"></i>장바구니</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/222.jpg" alt="" />
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>구매</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>찜하기</a></li>
										<li><a href="#"><i class="fa fa-plus-square"></i>장바구니</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/222.jpg" alt="" />
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>구매</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>찜하기</a></li>
										<li><a href="#"><i class="fa fa-plus-square"></i>장바구니</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/222.jpg" alt="" />
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>구매</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>찜하기</a></li>
										<li><a href="#"><i class="fa fa-plus-square"></i>장바구니</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/222.jpg" alt="" />
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>구매</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>찜하기</a></li>
										<li><a href="#"><i class="fa fa-plus-square"></i>장바구니</a></li>
									</ul>
								</div>
							</div>
						</div>						
					</div><!--features_items-->				
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>