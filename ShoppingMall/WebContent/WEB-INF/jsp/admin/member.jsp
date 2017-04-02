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
	            <h1 class="page-header">회원 관리</h1>
	        </div>
	        <!-- /.col-lg-12 -->
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="fa fa-bar-chart-o fa-fw"></i> 회원 리스트
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-lg-12">
	                            <div class="table-responsive">
	                                <table class="table table-bordered table-hover table-striped">
	                                    <thead>
	                                        <tr>
	                                            <th>아이디</th>
	                                            <th>성명</th>
	                                            <th>연락처</th>
	                                            <th>관리자 조치</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:forEach var="row" items="${memberList}">
	                                        <tr>
	                                            <td>${row.user_id}</td>
	                                            <td>${row.name }</td>
	                                            <td>${row.phone}</td>
	                                            <td align="center">
	                                            	<button onclick="app.memberDelete('${row.member_no}')" type="button" class="btn btn-danger btn-xs">삭제</button>
	                                            </td>
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
    
    _this.memberDelete = function(member_no) {
    	var params = "member_no="+member_no;
		$.ajax({
	        type        : "GET"  
	      , async       : false 
	      , url         : "/admin/memberDelete.do"
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
