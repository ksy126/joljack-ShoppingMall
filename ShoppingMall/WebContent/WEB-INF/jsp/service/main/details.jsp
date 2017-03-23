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
								<img src="/upload/img/${productInfo.p_img}" alt="" />
							</div>
						</div>
						<div class="col-xs-7">
							<div class="product-information"><!--/product-information-->
								<h2>${productInfo.p_name}</h2>
								<span>
									<span style="font-size: 22px;">
										판매가 
										<strong style="font-size: 25px; color: red;">${productInfo.p_price}</strong>
										<i style="font-size: 20px; color: red;" class="fa fa-krw fa-1" aria-hidden="true"></i>
										</span>
									<label>구매 수량:</label>
									<input type="text" value="1" />
								</span>
								<p><b>총 &nbsp;&nbsp;&nbsp;&nbsp;수량 &nbsp;&nbsp;:&nbsp;&nbsp;</b> ${productInfo.p_amount}</p>
								<p><b>판매 수량 &nbsp;&nbsp;:&nbsp;&nbsp;</b> ${productInfo.p_buy_amount}</p>
								<p><b>남은 수량 &nbsp;&nbsp;:&nbsp;&nbsp;</b> ${productInfo.p_amount - productInfo.p_buy_amount}</p>
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
									<p>&nbsp;</p>
									<p style="font-size: 19px;"><b>상품 상세 정보</b></p>
									
									<form action="#">
										<textarea name="" readonly="readonly" >${productInfo.p_info}</textarea>
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
