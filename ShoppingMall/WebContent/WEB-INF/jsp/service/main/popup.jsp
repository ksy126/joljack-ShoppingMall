<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../common/script.jsp"/>
<script>	
	function linkToOpener(URL){
		if (window.opener && !window.opener.closed)
		window.opener.location = URL;
		window.close();
	}
</script>
</head>

<body style="width: 414px; height: 400px;">	
<div style="margin-bottom: 3em;width: 414px; height: 400px;">
	<div id="slider-carousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#slider-carousel" data-slide-to="1"></li>
		</ol>
		
		<div class="carousel-inner">
			<div class="item active">
				<a href="javascript:linkToOpener('/main/notice.do');"><img src="<%=cp%>/images/mainSlider/popupSlide01.jpg" style="width: 100%;"></a>
			</div>
			<div class="item">
				<a href="javascript:linkToOpener('/main/notice.do');"><img src="<%=cp%>/images/mainSlider/popupSlide02.jpg" style="width: 100%;"></a>
			</div>
		</div>
		<div></div>
		<a href="#slider-carousel" class="left control-carousel hidden-xs" style="color: #040000; padding-left: 0.5em; padding-right: 0.5em;" data-slide="prev">
			<i class="fa fa-angle-left"></i>
		</a>
		<a href="#slider-carousel" class="right control-carousel hidden-xs" style="color: #040000; padding-left: 0.5em; padding-right: 0.5em;" data-slide="next">
			<i class="fa fa-angle-right"></i>
		</a>
	</div>
</div>
</body>
</html>