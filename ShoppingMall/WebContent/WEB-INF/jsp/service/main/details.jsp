<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
				<div class="col-xs-12">
					<div class="product-details"><!--product-details-->
						<div class="col-xs-5">
							<div class="view-product">
								<img src="<%=cp%>/images/product-details/1.jpg" alt="" />
							</div>
						</div>
						<div class="col-xs-7">
							<div class="product-information"><!--/product-information-->
								<h2>상품 이름</h2>
								<span>
									<span style="font-size: 22px;">
										판매가 
										<strong style="font-size: 25px; color: red;">5000</strong>
										<i style="font-size: 20px; color: red;" class="fa fa-krw fa-1" aria-hidden="true"></i>
										</span>
									<label>수량:</label>
									<input type="text" value="1" />
								</span>
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<p><b>Brand:</b> E-SHOPPER</p>
								<a href=""><img src="<%=cp%>/images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
						<div class="col-xs-7" style="margin-top: 1em; mar">
							<div class="pull-right">
							<button type="submit" class="btn btn-default">찜하기</button>
							<button type="submit" class="btn btn-default">장바구니</button>
							<button type="submit" class="btn btn-default" style="background-color: #778ece; color: #fff; border-color: #6a83c8;">바로구매</button>
							</div>
						</div>
					</div><!--/product-details-->
					
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="tab-content">
							<div class="tab-pane fade active in" id="reviews" >
								<div class="col-xs-12">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiuxsod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
									<p><b>Write Your Review</b></p>
									
									<form action="#">
										<textarea name="" ></textarea>
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
