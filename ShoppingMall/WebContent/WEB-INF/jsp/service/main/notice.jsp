<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../common/script.jsp"/>
</head>

<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="container" style="margin-top: 2em; min-height: 600px;">
	  <div>
	  	<div class="col-sm-10" style="font-size: 24px; margin-bottom: 1.5em;">
	  		<i class="fa fa-hand-o-right fa-3" aria-hidden="true"></i>&nbsp;<span>공지사항</span>
	  	</div>
	  </div>
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th style="width: 15%">번호</th>
	        <th style="width: 65%">제목</th>
	        <th style="width: 20%">작성자</th>
	      </tr>
	    </thead>
	    <tbody>
	      <c:forEach var="row" items="${noticeList}">
	      <tr onclick="app.moveQaDetail('${row.notice_no}')">
	        <td>${row.notice_no}</td>
	        <td>${row.notice_title}</td>
	        <td>관리자</td>
	      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
	  
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
	<jsp:include page="../common/footer.jsp"/>

	<input type="hidden" value="${po}" id="po">
<script type="text/javascript">
function App() {
    var _this = this;
    
    _this.moveQaDetail = function(notice_no) {
    	location.href="/main/notice/detail.do?notice_no="+notice_no;
    }

    // 페이징
    _this.paging = function(type) {
    	var pageNum = $('#po').val();
    	if(type == 'prev') {
    		pageNum = Number(pageNum) - 1;
    		location.href="/main/notice.do?po="+pageNum;
    	} else if(type == 'next') {
    		pageNum = Number(pageNum) + 1;
    		location.href="/main/notice.do?po="+pageNum;
    	} else if (type == 'first') {
    		location.href="/main/notice.do?po=0";
    	}
    };
    
	// 문의 등록 페이지 이동
	_this.moveWrite = function() {
		location.href="/main/qa/write.do"
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