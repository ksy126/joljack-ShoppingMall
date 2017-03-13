<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	  <h2>문의하기</h2>           
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th style="width: 15%">번호</th>
	        <th style="width: 65%">제목</th>
	        <th style="width: 20%">작성자</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>John</td>
	        <td>Doe</td>
	        <td>john@example.com</td>
	      </tr>
	      <tr>
	        <td>Mary</td>
	        <td>Moe</td>
	        <td>mary@example.com</td>
	      </tr>
	      <tr>
	        <td>July</td>
	        <td>Dooley</td>
	        <td>july@example.com</td>
	      </tr>
	    </tbody>
	  </table>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>