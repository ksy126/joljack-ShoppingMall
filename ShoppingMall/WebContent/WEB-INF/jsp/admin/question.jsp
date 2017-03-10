<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="common/script.jsp"/>

<body>
	<jsp:include page="common/navigation.html"/>
	
	<div id="page-wrapper">
	    <div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">문의 관리</h1>
	        </div>
	        <!-- /.col-lg-12 -->
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="fa fa-bar-chart-o fa-fw"></i> 문의 사항 리스트
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-lg-12">
	                            <div class="table-responsive">
	                                <table class="table table-bordered table-hover table-striped">
	                                    <thead>
	                                        <tr>
	                                            <th>번호</th>
	                                            <th>제목</th>
	                                            <th>글쓴이</th>
	                                            <th>날짜</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                        <tr>
	                                            <td>3326</td>
	                                            <td>10/21/2013</td>
	                                            <td>3:29 PM</td>
	                                            <td>$234.34</td>
	                                        </tr>
	                                        <tr>
	                                            <td>3325</td>
	                                            <td>10/21/2013</td>
	                                            <td>3:20 PM</td>
	                                            <td>$234.34</td>
	                                        </tr>
	                                        <tr>
	                                            <td>3324</td>
	                                            <td>10/21/2013</td>
	                                            <td>3:03 PM</td>
	                                            <td>$724.17</td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                            <!-- /.table-responsive -->
	                        </div>
	                    </div>
	                    <!-- /.row -->
	                </div>
	                <!-- /.panel-body -->
	            </div>
	            <!-- /.panel -->
	        </div>
	    </div>
	    <!-- /.row -->
	</div>
	<!-- /#page-wrapper -->

</body>
</html>
