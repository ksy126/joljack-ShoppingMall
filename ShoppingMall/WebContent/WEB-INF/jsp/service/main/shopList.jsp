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
	
	<section style="margin-top: 3em;">
		<div class="container">
			<div class="row">
				<c:if test="${category == 'acc' }">
				<div class="col-sm-12" style="margin-bottom: 3em;">
					<img src="<%=cp%>/images/sub_list/sub_acc.png" style="width: 100%;">
				</div>
				</c:if>
				<c:if test="${category == 'best' }">
				<div class="col-sm-12" style="margin-bottom: 3em;">
					<img src="<%=cp%>/images/sub_list/sub_best.png" style="width: 100%;">
				</div>
				</c:if>
				<c:if test="${category == 'outer' }">
				<div class="col-sm-12" style="margin-bottom: 3em;">
					<img src="<%=cp%>/images/sub_list/sub_outer.png" style="width: 100%;">
				</div>
				</c:if>
				<c:if test="${category == 'pants' }">
				<div class="col-sm-12" style="margin-bottom: 3em;">
					<img src="<%=cp%>/images/sub_list/sub_pants.png" style="width: 100%;">
				</div>
				</c:if>
				<c:if test="${category == 'shirt' }">
				<div class="col-sm-12" style="margin-bottom: 3em;">
					<img src="<%=cp%>/images/sub_list/sub_shirt.png" style="width: 100%;">
				</div>
				</c:if>
				<c:if test="${category == 'top' }">
				<div class="col-sm-12" style="margin-bottom: 3em;">
					<img src="<%=cp%>/images/sub_list/sub_top.png" style="width: 100%;">
				</div>
				</c:if>
				
				<div class="col-sm-12" style="font-size: 14px;">			  
					<a href="#" style=" color: black;">신상품순</a> | 
					<a href="#" style=" color: black;">인기순</a> | 
					<a href="#" style=" color: black;">낮은가격순</a> | 
					<a href="#" style=" color: black;">높은가격순</a>
				</div>		
				
				<div class="col-sm-12">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">${category}</h2>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=cp%>/images/111.jpg" alt="" />
										<p>Easy Polo Black Edition</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i> 30000</h2>										
									</div>
								</div>
							</div>
						</div>
						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>
