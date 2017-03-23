<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>

	<header id="header"><!--header-->		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-xs-4" align="center" style="margin-top: 1.5em;">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
					<div class="col-xs-4" align="center">
						<div class="logo">
							<a href="#"><img src="<%=cp%>/images/mainSlider/logo.png" style="width: 80px;" alt="" /></a> 
						</div>
					</div>
					<div class="col-xs-4" align="center" style="margin-top: 1.5em;">
						<div class="social-icons pull-left">
							<ul class="nav navbar-nav">
								<li><a href="/auth/login.do"><i class="fa fa-lock"></i> 로그인</a></li>
								<li><a href="/auth/join.do"><i class="fa fa-user"></i> 회원가입</a></li>
								<li><a href="/main/zzim.do"><i class="fa fa-star"></i> 찜</a></li>
								<li><a href="/main/cart.do"><i class="fa fa-shopping-cart"></i> 장바구니</a></li>
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
								<li><a href="/main/qa.do"><strong>NOTICE</strong></a></li>
								<li><a href="/main/qa.do"><strong>Q&A</strong></a></li>
							</ul>
						</div>
					</div>
					<<div class="col-xs-2">&nbsp;</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->