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
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
				<div class="panel panel-default">
	                <div class="panel-heading">
	                	상품 정보
	                </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th width="10%" style="text-align: center;">공지 번호</th>
                                        <th style="text-align: center;">공지사항 제목</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                	<c:forEach var="row" items="${noticeList}">
                                    <tr class="info" onclick="app.moveNoticeDetails('${row.notice_no}')">
                                        <td>${row.notice_no}</td>
                                        <td>${row.notice_title}</td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
	        </div>
	    </div>
	</div>
<script>
function App() {
    var _this = this;
    
    // ENV
    _this.env = {};
    
    _this.moveNoticeDetails = function(notice_no) {
    	location.href="/admin/notice/details.do?notice_no="+notice_no;
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
