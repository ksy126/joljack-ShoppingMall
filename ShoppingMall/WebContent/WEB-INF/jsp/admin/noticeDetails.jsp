<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<jsp:include page="common/script.jsp"/>

<body>
	<jsp:include page="common/navigation.jsp"/>
	
	<div id="page-wrapper">
	    <div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">공지 관리</h1>
	        </div>
	        <!-- /.col-lg-12 -->
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="fa fa-bar-chart-o fa-fw"></i> 공지 사항
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-lg-12">
	                        	<form role="form">
	                                <div class="form-group">
	                                    <p style="font-size: 19px;"><b>${noticeVo.notice_title}</b></p>
	                                </div>
                                        
	                                <div class="form-group">
                                        <textarea class="form-control" style="resize: none; wrap:hard;" rows="6" readonly="readonly">${noticeVo.notice_content}</textarea>
                                    </div>
                                    
                                    <div>
                                    	<input type="hidden" value="${noticeVo.notice_no}" id="notice_no">
                                    	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="app.noticeModify();">공지 수정</button>
                                    	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="app.noticeDelete();">공지 삭제</button>
                                    </div>
                                </form>
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
	</div>
<script>
function App() {
    var _this = this;
    
    // ENV
    _this.env = {};
    
    _this.noticeModify = function() {
    	var notice_no = $('#notice_no').val();
    	location.href="/admin/notice/modify.do?notice_no="+notice_no;
    }
    
    _this.noticeDelete = function() {
    	var params = {
    			notice_no : $('#notice_no').val(),
        	};
        	
    		$.ajax({
    		      type        : "POST"
    		    , async       : true
    		    , url         : "/admin/noticeDelete.do"
    		    , data        : params
    		    , dataType    : "json"
    		    , timeout     : 30000  
    		    , cache       : false    
    		    //, contentType : "application/x-www-form- urlencoded;charset=UTF-8"
    		    , success     : function(data) {
    				location.href="/admin/notice/list.do";
    		    }
    		    , error       : function(request, status, error) {
    		        alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );       
    		    }
    		});
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
