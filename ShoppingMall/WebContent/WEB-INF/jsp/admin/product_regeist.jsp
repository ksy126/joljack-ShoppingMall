<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="common/script.jsp"/>

<body>
	<jsp:include page="common/navigation.html"/>
	
	<div id="page-wrapper">
	    <div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">상품 등록</h1>
	        </div>
	        <!-- /.col-lg-12 -->
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="fa fa-bar-chart-o fa-fw"></i> 상품 등록하기
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-lg-9 col-lg-offset-1">
	                        	<form role="form">
	                                <div class="form-group">
	                                    <label>상품 이름</label>
	                                    <input class="form-control" id="p_name">
	                                </div>
	                                
	                                <div class="form-group">
                                        <label>상품 카테고리</label>
                                        <select class="form-control" id="p_category">
                                            <option value="outer">OUTER</option>
                                            <option value="top">TOP</option>
                                            <option value="shirt">SHIRT & KNIT</option>
                                            <option value="pants">PANTS</option>
                                            <option vlaue="acc">ACC</option>
                                        </select>
                                    </div>
                                    
                                    <div class="form-group">
	                                    <label>상품 가격</label>
	                                    <input class="form-control" id="p_price">
	                                </div>
	                                
	                                <div class="form-group">
	                                    <label>상품 수량</label>
	                                    <input class="form-control" id="p_amount">
	                                </div>
	                                
                                    <div class="form-group">
                                        <label>상품 이미지 등록</label>
                                        <input type="file">
                                    </div>
                                        
	                                <div class="form-group">
                                        <label>상품 상세 정보</label>
                                        <textarea class="form-control" style="resize: none; wrap:hard;" rows="6" id="p_info"></textarea>
                                    </div>
                                    
                                    <div>
                                    	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="app.productWrite();">등록</button>
                                    </div>
                                </form>
	                        </div>
	                    </div>
	                    <!-- /.row -->
	                </div>
	                <!-- /.panel-body -->
	            </div>
	            <!-- /.panel -->
	        </div>
	    </div>
	    <!-- /.row -->
	</div>
	<!-- /#page-wrapper -->
<script>
function App() {
    var _this = this;
    
    _this.env
    
    // ENV
    _this.env = {};
    _this.env.p_name = $('#p_name');
    _this.env.p_category = $('#p_category');
    _this.env.p_info = $('#p_info');
    _this.env.p_price = $('#p_price');
    _this.env.p_amount = $('#p_amount');

    
    // 상품 등록
    _this.productWrite = function() {
    	var params = {
    		p_name : _this.env.p_name.val(),
    		p_category : _this.env.p_category.val(),
    		p_price : _this.env.p_price.val(),
    		p_amount : _this.env.p_amount.val(), 
    		p_info : _this.env.p_info.val()	
    	};
    	
    	alert(JSON.stringify(params));
    	
		$.ajax({
		      type        : "POST" 
		    , async       : true
		    , url         : "/admin/save/product.do"
		    , data        : params
		    , dataType    : "json"
		    , timeout     : 30000  
		    , cache       : false    
		    //, contentType : "application/x-www-form- urlencoded;charset=UTF-8"
		    , success     : function(data) {
		
		    }
		    , error       : function(request, status, error) {
		        alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );       
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
