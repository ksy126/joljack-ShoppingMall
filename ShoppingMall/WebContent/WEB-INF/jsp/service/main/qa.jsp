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
	
	<div class="container" style="margin-top: 2em; min-height: 450px;">
	  <div>
	  	<div class="col-sm-10" style="font-size: 24px; margin-bottom: 1.5em;">
	  		<i class="fa fa-question-circle fa-3" aria-hidden="true"></i>&nbsp;<span>문의하기</span>
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
	      <c:forEach var="row" items="${qaList}">
	      <tr onclick="app.moveQaDetail('${row.qa_no}')">
	        <td>${row.qa_no}</td>
	        <td>${row.qa_title}</td>
	        <td>${row.name}</td>
	      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
	  
		<div class="col-sm-8 col-sm-offset-2" align="center">
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
	
  		<div class="col-sm-2" align="right">
			<button type="submit" class="btn btn-default" onclick="app.moveWrite()">문의 등록</button>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"/>

	<input type="hidden" value="${po}" id="po">
<script type="text/javascript">
function App() {
    var _this = this;

    // 페이징
    _this.paging = function(type) {
    	var pageNum = $('#po').val();
    	if(type == 'prev') {
    		pageNum = Number(pageNum) - 1;
    		location.href="/main/qa.do?po="+pageNum;
    	} else if(type == 'next') {
    		pageNum = Number(pageNum) + 1;
    		location.href="/main/qa.do?po="+pageNum;
    	} else if (type == 'first') {
    		location.href="/main/qa.do?po=0";
    	}
    };
    
    _this.moveQaDetail = function(qa_no) {
    	location.href="/main/qa/detail.do?qa_no="+qa_no;
    }
    
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