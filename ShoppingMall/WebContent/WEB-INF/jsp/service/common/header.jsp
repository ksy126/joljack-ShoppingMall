<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>

	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="social-icons pull-right">
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
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-12" align="center">
						<div class="logo">
							<a href="#"><img src="<%=cp%>/images/mainSlider/logo.png" style="width: 60px;" alt="" /></a> 
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="mainmenu">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="/main/main.do" class="active"><strong>Home</strong></a></li>
								<li class="dropdown"><a href="#"><strong>SHOP</strong><i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="/main/shop/list/outer.do"><strong>OUTER</strong></a></li>
										<li><a href="/main/shop/list/top.do"><strong>TOP</strong></a></li> 
										<li><a href="/main/shop/list/shirt.do"><strong>SHIRT & KNIT</strong></a></li> 
										<li><a href="/main/shop/list/pants.do"><strong>PANTS</strong></a></li> 
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="/main/shop/list/acc.do"><strong>ACC</strong></a></li>
								<li class="dropdown"><a href="#"><strong>Contact</strong><i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
                                        <li><a href="/main/qa.do"><strong>공지사항</strong></a></li>
										<li><a href="/main/qa.do"><strong>문의하기</strong></a></li> 
                                    </ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->