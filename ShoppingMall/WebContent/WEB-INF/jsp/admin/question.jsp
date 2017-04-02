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
	            <h1 class="page-header">문의 관리</h1>
	        </div>
	        <!-- /.col-lg-12 -->
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="fa fa-bar-chart-o fa-fw"></i> 문의 사항 리스트
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-lg-12">
	                            <div class="table-responsive">
	                                <table class="table table-bordered table-hover table-striped">
	                                    <thead>
	                                        <tr>
	                                            <th>번호</th>
	                                            <th>제목</th>
	                                            <th>작성자</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:forEach var="row" items="${questionList}">
	                                        <tr onclick="app.questionDetails('${row.qa_no}')">
	                                            <td>${row.qa_no}</td>
	                                            <td>${row.qa_title}</td>
	                                            <td>${row.name}</td>
	                                        </tr>
	                                        </c:forEach>
	                                    </tbody>
	                                </table>
	                            </div>
	                            <!-- /.table-responsive -->
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
    
    // ENV
    _this.env = {};
    
    _this.questionDetails = function(qa_no) {
    	location.href="/admin/questionDetails.do?qa_no="+qa_no
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
