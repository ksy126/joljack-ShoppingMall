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
                                        <th style="width: 40%">상품이름</th>
                                        <th style="width: 25%">카테고리</th>
                                        <th style="width: 15%">상품 총 수량</th>
                                        <th style="width: 20%">상품 구매 수량</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="row" items="${allList}">
                                    <tr class="success">
                                        <td>${row.p_name}</td>
                                        <td>${row.p_category}</td>
                                        <td align="center">${row.p_amount}</td>
                                        <td align="center">${row.p_buy_amount}</td>
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

</body>
</html>
