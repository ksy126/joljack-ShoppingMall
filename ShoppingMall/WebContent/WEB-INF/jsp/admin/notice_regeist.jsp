<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	            <h1 class="page-header">공지사항 등록</h1>
	        </div>
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="fa fa-bar-chart-o fa-fw"></i> 공지 등록하기
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-lg-9 col-lg-offset-1">
	                        	<form role="form">
	                                <div class="form-group">
	                                    <label>공지 제목</label>
	                                    <input class="form-control" id="notice_title">
	                                </div>
                                        
	                                <div class="form-group">
                                        <label>공지 상세 내용</label>
                                        <textarea class="form-control" style="resize: none; wrap:hard;" rows="6" id="notice_content"></textarea>
                                    </div>
                                    
                                    <div>
                                    	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="app.noticeWrite();">등록</button>
                                    </div>
                                </form>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
<script>
function App() {
    var _this = this;
    
    // ENV
    _this.env = {};
    _this.env.notice_title = $('#notice_title');
    _this.env.notice_content = $('#notice_content');

    
    // 상품 등록
    _this.noticeWrite = function() {
    	
    	var params = {
    		notice_title : _this.env.notice_title.val(),
    		notice_content : _this.env.notice_content.val()
    	};
    	
		$.ajax({
		      type        : "POST"
		    , async       : true
		    , url         : "/admin/save/notice.do"
		    , data        : params
		    , dataType    : "json"
		    , timeout     : 30000  
		    , cache       : false    
		    //, contentType : "application/x-www-form- urlencoded;charset=UTF-8"
		    , success     : function(data) {
				alert("공지가 등록 되었습니다.");
				location.reload();
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
