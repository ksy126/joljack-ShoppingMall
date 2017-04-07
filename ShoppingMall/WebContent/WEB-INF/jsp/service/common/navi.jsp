<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>

	<div style="background-color: black; position: fixed; z-index: 999; width: 100px; top: 180px; right: 20px;">
		<div align="center">
			<p style="color: #fff; padding-top: 10px;"><strong>Navigation</strong></p>
		</div>
		<c:forEach var="row" items="${naviList}">
		<div align="center">
			<img src="/upload/img/${row.p_img}" width="80px;"/>
			<p style="color: #fff;">${row.p_name }</p>			
		</div>
		</c:forEach>
	</div>