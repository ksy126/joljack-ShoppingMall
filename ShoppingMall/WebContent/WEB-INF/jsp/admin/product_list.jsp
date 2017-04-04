<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="common/script.jsp"/>

<body>
	<jsp:include page="common/navigation.jsp"/>
	
	<div id="page-wrapper">
	    <div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">상품 리스트</h1>
	        </div>
	        <!-- /.col-lg-12 -->
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
				<div class="panel panel-default">
	                <div class="panel-heading">
	                	상품 정보
	                </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th style="width: 30%">상품이름</th>
                                        <th style="width: 15%">카테고리</th>
                                        <th style="width: 15%">상품 총 수량</th>
                                        <th style="width: 20%">상품 구매 수량</th>
                                        <th style="width: 20%">삭제</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="row" items="${allList}">
                                    <tr class="success">
                                        <td>${row.p_name}</td>
                                        <td>${row.p_category}</td>
                                        <td align="center">${row.p_amount}</td>
                                        <td align="center">${row.p_buy_amount}</td>
                                        <td align="center">
                                        	<button type="button" class="btn btn-success" onclick="app.productModify('${row.product_no}')">수정</button>
                                        	<button type="button" class="btn btn-warning" onclick="app.productDelete('${row.product_no}')">삭제</button>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
	            <!-- /.panel -->
	        </div>
	    </div>
	    <!-- /.row -->
	</div>
	<!-- /#page-wrapper -->
<script type="text/javascript">
	function App() {
	    var _this = this;

	    //수정 페이지 이동
	    _this.productModify = function(product_no){
	    	location.href="/admin/product/modify.do?product_no="+product_no;
	    }
	    
	    // 삭제
	    _this.productDelete = function(product_no){
	    	var params = "product_no="+product_no;
	 		$.ajax({
	 	        type        : "GET"  
	 	      , async       : false 
	 	      , url         : "/admin/product/productDelete.do"
	 	      , data        : params
	 	      , dataType    : "json" 
	 	      , timeout     : 30000
	 	      , cache       : false     
	 	      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
	 	      , error       : function(request, status, error) {
	 				alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
	 	      }
	 	      , success     : function(data) {
	 	    	  alert("상품이 삭제 되었습니다.");
	 	    	  location.reload();
	 	      }
	     	});
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
