<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../common/script.jsp"/>
    
    <!-- 세션 없으면 메인페이지로 강제 이동 -->
	<c:if test="${sessionScope.sessionData.memberInfo.getMember_no() == null || sessionScope.sessionData.memberInfo.getMember_no() ==''}">
		<script>
			location.href="${pageContext.request.contextPath}/auth/login.do";
			alert("로그인 후 이용해 주세요.");
		</script>
	</c:if>  
</head>

<body>
	<jsp:include page="../common/header.jsp"/>
	
	<section id="cart_items">
		
		<div class="container">
			<div class="panel panel-default" style="margin: 1.5em 5.5em 1.5em 5.5em;" align="center">
			  <div class="panel-body">
			  	<h4>결제 완료 ( 배송중 )</h4>
			  </div>
			</div>
		
			<div class="breadcrumbs" style="margin-top: 3em;">
				<h2 class="title text-center">배송조회</h2>
			</div>

			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image" style="width: 20%;">Item</td>
							<td class="description" style="width: 25%;"></td>
							<td class="price" align="center" style="width: 10%;">Option</td>
							<td class="price" align="center" style="width: 10%;">Price</td>
							<td class="quantity" align="center" style="width: 10%;">Quantity</td>
							<td class="total" align="center" style="width: 15%;">Total</td>
							<td align="center" style="width: 10%;">삭제</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${parchaseList}">
						<tr>
							<td class="cart_product">
								<img src="/upload/img/${row.p_img}" alt="" style="width: 200px; height: 200px;"/>
							</td>
							<td class="cart_description">
								<h4><a href="#">${row.p_name}</a></h4>
							</td>
							<td class="cart_description">
								<h4><a href="#">${row.p_option}</a></h4>
							</td>
							<td class="cart_price" align="center">
								<h4><i class="fa fa-krw" aria-hidden="true"></i> ${row.p_price}</h4>
							</td>
							<td class="cart_quantity" align="center">
								<div class="cart_quantity_button">
									<h4>${row.quantity} 개</h4>
								</div>
							</td>
							<td class="cart_total" align="center">
								<h4 class="cart_total_price"><i class="fa fa-krw" aria-hidden="true"></i> ${row.quantity * row.p_price}</h4>
							</td>
							<td class="cart_delete" align="center">
								<a class="cart_quantity_delete" href="" onclick="app.cartDelete('${row.purchase_no}', '${row.quantity}', '${row.product_no}')"><i class="fa fa-times"></i></a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->
	
	<jsp:include page="../common/footer.jsp"/>
<script type="text/javascript">
function App() {
    var _this = this;

    // 찜 리스트 삭제
   	_this.cartDelete = function(purchase_no, quantity, product_no) {
    	var params = "purchase_no="+purchase_no+"&quantity="+quantity+"&product_no="+product_no;
		$.ajax({
	        type        : "GET"  
	      , async       : false 
	      , url         : "/main/purchaseDelete.do"
	      , data        : params
	      , dataType    : "json" 
	      , timeout     : 30000
	      , cache       : false     
	      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
	      , error       : function(request, status, error) {
				alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
	      }
	      , success     : function(data) {
	    	  location.reload();
	      }
    	});
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