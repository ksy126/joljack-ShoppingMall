<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
	String member_no="";
	boolean isSession = true;
	
	if (session.getAttribute("member_no") != null) {
	   
		member_no = session.getAttribute("member_no").toString();
	  
	} else {
	    isSession = false;
	    session.removeAttribute("sessionData");
	}
%>
	<header id="header"><!--header-->		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row" style="width: 1200px;">
					<div class="col-xs-3" align="center" style="margin-top: 1.5em;">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search" id="searchValue"/>
							<button onclick="search.search()" class="btn btn-default">검색</button>
						</div>
					</div>
					<div class="col-xs-4" align=right>
						<div class="logo">
							<a href="/main/main.do"><img src="<%=cp%>/images/mainSlider/logo.png" alt="" /></a> 
						</div>
					</div>
					<div class="col-xs-4" align="center" style="margin-top: 1.5em;">
						<div class="social-icons pull-left">
							<ul class="nav navbar-nav">
								<c:if test="${sessionScope.sessionData.memberInfo.getMember_no() == null || sessionScope.sessionData.memberInfo.getMember_no() == ''}">
								<li><a href="/auth/login.do"><i class="fa fa-lock"></i>로그인</a></li>
								</c:if>
								<c:if test="${sessionScope.sessionData.memberInfo.getMember_no() != null && sessionScope.sessionData.memberInfo.getMember_no() != ''}">
								<li><a href="/auth/userLogout.do"><i class="fa fa-lock"></i>로그아웃</a></li>
								</c:if>
								<li><a href="/auth/join.do"><i class="fa fa-user"></i>회원가입</a></li>
								<li><a href="/main/zzim.do"><i class="fa fa-star"></i>장바구니</a></li>
								<li><a href="/main/cart.do"><i class="fa fa-shopping-cart"></i>배송조회</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-xs-2">&nbsp;</div>
					<div class="col-xs-8">
						<div class="mainmenu">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="/main/main.do" class="active"><strong>Home</strong></a></li>
								<li><a href="/main/shop/list/outer.do"><strong>OUTER</strong></a></li>
								<li><a href="/main/shop/list/top.do"><strong>TOP</strong></a></li> 
								<li><a href="/main/shop/list/shirt.do"><strong>SHIRT & KNIT</strong></a></li> 
								<li><a href="/main/shop/list/pants.do"><strong>PANTS</strong></a></li>
								<li><a href="/main/shop/list/acc.do"><strong>ACC</strong></a></li>
								<li><a href="/main/notice.do"><strong>NOTICE</strong></a></li>
								<li><a href="/main/qa.do"><strong>Q&A</strong></a></li>
							</ul>
						</div>
					</div>
					<<div class="col-xs-2">&nbsp;</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->