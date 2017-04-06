<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
	String member_no="";
	boolean isSession = true;
	
	if (session.getAttribute("member_no") != null) {
	   
		member_no = session.getAttribute("member_no").toString();
	  
	} else {
	    isSession = false;
	    session.removeAttribute("sessionData");
	}
%>
<!DOCTYPE html>
<html>
	<jsp:include page="../common/script.jsp"/>
	
<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../common/navi.jsp"/>
    
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
							<div class="product-information" style="padding-top: 30px; padding-bottom: 30px;"><!--/product-information-->
								<h2>${productInfo.p_name}</h2>
								<span>
									<span style="font-size: 22px;">
										판매가 
										<strong style="font-size: 25px; color: red;">${productInfo.p_price}</strong>
										<i style="font-size: 20px; color: red;" class="fa fa-krw fa-1" aria-hidden="true"></i>
										</span>
									<label>구매 수량:</label>
									<input type="number" value="1" id="quantity" />
									<input type="hidden" value="${productInfo.p_amount - productInfo.p_buy_amount}" id="lastQuantity"/>
									<input type="hidden" value="${productInfo.p_buy_amount}" id="p_buy_amount"/>
								</span>
								<div class="form-group">
								  <label for="sel1">상품 옵션:&nbsp; </label>
								  <select class="w3-select" id="option" style="width: 15%;">
								    <option value="Large">Large</option>
								    <option value="Medium">Medium</option>
								    <option value="Small">Small</option>
								  </select>
								</div>
								<p><b>총 &nbsp;&nbsp;&nbsp;&nbsp;수량 &nbsp;&nbsp;:&nbsp;&nbsp;</b> ${productInfo.p_amount}</p>
								<p><b>판매 수량 &nbsp;&nbsp;:&nbsp;&nbsp;</b> ${productInfo.p_buy_amount}</p>
								<p><b>남은 수량 &nbsp;&nbsp;:&nbsp;&nbsp;</b> ${productInfo.p_amount - productInfo.p_buy_amount}</p>
								<a href="https://www.facebook.com/업노멀-630826543753989/?fref=ts"><img src="<%=cp%>/images/facebook.png" alt="" width="30px;"/></a>&nbsp;&nbsp;&nbsp;
								<a href="https://www.instagram.com/upnormall_/"><img src="<%=cp%>/images/instagram.png" alt="" width="30px;"/></a><br><br>
								<button type="submit" class="btn btn-default" onclick="app.productZzim('${productInfo.product_no}')">장바구니</button>
							    <button type="submit" class="btn btn-default" onclick="app.parchase('${productInfo.product_no}')" style="background-color: #778ece; color: #fff; border-color: #6a83c8;">바로구매</button>
							</div><!--/product-information-->
						</div>
						<div class="col-xs-7" style="margin-top: 1em; mar">
							<div class="pull-right">
							
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
    <input type="hidden" value="<%=member_no%>" id="sessionMember_no">
<script type="text/javascript">
function App() {
    var _this = this;
    
    _this.sessionCheck = function() {
    	var isVaild = false;
    	
    	var member_no = $('#sessionMember_no').val();
    	
    	if(member_no == '' || member_no == null){
    		alert("로그인 후 이용 가능합니다.");
    		isVaild = false;
    	} else {
    		isVaild = true;
    	}
    	return isVaild;
    };
    
    
    _this.parchase = function(product_no) {
    	var isVaild = false;
    	var quantity = $('#quantity').val();
    		quantity = quantity * 1;
    	var lastQuantity = $('#lastQuantity').val();
    		lastQuantity = lastQuantity * 1;
    		
    	isVaild = _this.sessionCheck();
    	
    	if(isVaild) {
	    	if(quantity > lastQuantity) {
	    		alert("구매할수 있는 수량이 부족합니다.");
	    		isVaild = false;
	    		return isVaild;
	    	}
    	}
    	if(isVaild) {
    		var member_no = $('#sessionMember_no').val();
    		var p_option = $('#option').val();
    		var p_buy_amount = $('#p_buy_amount').val();
    			p_buy_amount = p_buy_amount * 1;
    			p_buy_amount = p_buy_amount + quantity;
    		var params = "product_no="+product_no+"&member_no="+member_no+"&quantity="+quantity+"&p_buy_amount="+p_buy_amount+"&p_option="+p_option;
	 		$.ajax({
	 	        type        : "GET"  
	 	      , async       : false 
	 	      , url         : "/main/parchase.do"
	 	      , data        : params
	 	      , dataType    : "json" 
	 	      , timeout     : 30000
	 	      , cache       : false     
	 	      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
	 	      , error       : function(request, status, error) {
	 				alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
	 	      }
	 	      , success     : function(data) {
	 	    	  alert("구매가 완료 되었습니다.");
	 	    	  location.href="/main/cart.do"
	 	      }
	     	});
    	}
    };
    
	_this.productZzim = function(product_no) {		
		var isVaild = false;
		
		isVaild = _this.sessionCheck();
		
		if(isVaild){
			var member_no = $('#sessionMember_no').val();
			var params = "product_no="+product_no+"&member_no="+member_no;
	 		$.ajax({
	 	        type        : "GET"  
	 	      , async       : false 
	 	      , url         : "/main/productZzimSave.do"
	 	      , data        : params
	 	      , dataType    : "json" 
	 	      , timeout     : 30000
	 	      , cache       : false     
	 	      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
	 	      , error       : function(request, status, error) {
	 				alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
	 	      }
	 	      , success     : function(data) {
		    	  alert("장바구니 메뉴에서 등록한 상품을 확인할 수 있습니다.");
	 	      }
	     	});
		}
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
