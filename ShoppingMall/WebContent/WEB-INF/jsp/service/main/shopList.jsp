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
					<a href="#" style=" color: black;" onclick="app.categoryGetList('new')">신상품순</a> | 
					<a href="#" style=" color: black;" onclick="app.categoryGetList('best')">인기순</a> | 
					<a href="#" style=" color: black;" onclick="app.categoryGetList('highPrice')">높은가격순</a> | 
					<a href="#" style=" color: black;" onclick="app.categoryGetList('lowPrice')">낮은가격순</a>
				</div>		
				
				<div class="col-sm-12">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">${category}</h2>
						<c:forEach var="row" items="${itemList}">
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
				</div>				
				<div class="col-sm-12" align="center">
					<ul class="pagination">
						<c:if test="${po == 0}">
						<li><a href="javascript:;" onclick="app.paging('first')">첫 페이지</a></li>
						</c:if>
						<c:if test="${po > 0}">
						<li><a href="javascript:;" onclick="app.paging('prev')">이전페이지</a></li>
						</c:if>
						<li class="active"><a href="">${po + 1}</a></li>
						<li><a href="javascript:;" onclick="app.paging('next')">다음페이지</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
	<!-- 페이징 및 카테고리 정보 -->
	<input type="hidden" value="${category}" id="category">
	<input type="hidden" value="${po}" id="po">
	<input type="hidden" value="${type}" id="type">
	<input type="hidden" value="${search}" id="search">
<script type="text/javascript">
function App() {
    var _this = this;

    // 페이징
    _this.paging = function(type) {
    	var pageNum = $('#po').val();
    	var category = $('#category').val();
    	var defaultType = $('#type').val();
    	var search = $('#search').val();
    	if(type == 'prev') {
    		pageNum = Number(pageNum) - 1;
    		location.href="/main/shop/list/"+category+".do?po="+pageNum+"&type="+defaultType+"&search="+search;
    	} else if(type == 'next') {
    		pageNum = Number(pageNum) + 1;
    		location.href="/main/shop/list/"+category+".do?po="+pageNum+"&type="+defaultType+"&search="+search;
    	} else if (type == 'first') {
    		location.href="/main/shop/list/"+category+".do?po=0&type="+defaultType+"&search="+search;
    	}
    };
    
    // 물품 리스트 정렬
    _this.categoryGetList = function(type) {
    	var pageNum = $('#po').val();
    	var category = $('#category').val();
    	var search = $('#search').val();
    	
    	location.href="/main/shop/list/"+category+".do?po="+pageNum+"&type="+type+"&search="+search;
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
</body>
</html>
