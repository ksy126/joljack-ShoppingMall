<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <a class="navbar-brand" href="/admin/main.do">UPNORMAL 관리자 </a>
    </div>
    <!-- /.navbar-header -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="/admin/member.do"><i class="fa fa-user-circle fa-fw"></i> 회원 관리</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-cart-plus fa-fw"></i> 상품 관리<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/admin/product/regeist.do"> 상품 등록</a>
                        </li>
                        <li>
                            <a href="/admin/product/list.do"> 상품 수정/삭제</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/admin/question.do"><i class="fa fa-question-circle-o fa-fw"></i> 문의 관리</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-exclamation-circle fa-fw"></i> 공지사항<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/admin/notice/regeist.do"> 공지 등록</a>
                        </li>
                        <li>
                            <a href="/admin/notice/list.do"> 공지 리스트</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>
