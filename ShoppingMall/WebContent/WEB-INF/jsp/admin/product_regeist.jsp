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
	                                    <input class="form-control">
	                                </div>
	                                
	                                <div class="form-group">
                                        <label>상품 카테고리</label>
                                        <select class="form-control">
                                            <option>OUTER</option>
                                            <option>TOP</option>
                                            <option>SHIRT & KNIT</option>
                                            <option>PANTS</option>
                                            <option>ACC</option>
                                        </select>
                                    </div>
                                    
                                    <div class="form-group">
	                                    <label>상품 가격</label>
	                                    <input class="form-control">
	                                </div>
	                                
	                                <div class="form-group">
	                                    <label>상품 수량</label>
	                                    <input class="form-control">
	                                </div>
	                                
                                    <div class="form-group">
                                        <label>상품 이미지 등록</label>
                                        <input type="file">
                                    </div>
                                        
	                                <div class="form-group">
                                        <label>상품 상세 정보</label>
                                        <textarea class="form-control" style="resize: none; wrap:hard;" rows="6"></textarea>
                                    </div>
                                    
                                    <div>
                                    	<button type="button" class="btn btn-primary btn-lg btn-block">등록</button>
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

</body>
</html>
