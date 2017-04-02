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
	            <h1 class="page-header">문의 관리</h1>
	        </div>
	        <!-- /.col-lg-12 -->
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="fa fa-bar-chart-o fa-fw"></i> 문의 사항 상세
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-lg-12">
	                        	<form role="form">
	                                <div class="form-group">
	                                    <p style="font-size: 19px;"><b>${qaVo.qa_title}</b></p>
	                                </div>
                                        
	                                <div class="form-group">
                                        <textarea class="form-control" style="resize: none; wrap:hard;" rows="6" readonly="readonly">${qaVo.qa_content}</textarea>
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <label>문의 답변 등록</label>
                                        <input type="hidden" value="${qaVo.qa_no}" id="qa_no">
                                        <textarea class="form-control" style="resize: none; wrap:hard;" rows="6" id="qa_answer">${qaVo.qa_answer}</textarea>
                                    </div>
                                    
                                    <div>
                                    	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="app.qaAnswer();">답변 등록</button>
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
    
    _this.qaAnswer = function() {
    	var params = {
        		qa_no : $('#qa_no').val(),
        		qa_answer : $('#qa_answer').val()
        	};
        	
    		$.ajax({
    		      type        : "POST"
    		    , async       : true
    		    , url         : "/admin/save/qaAnswer.do"
    		    , data        : params
    		    , dataType    : "json"
    		    , timeout     : 30000  
    		    , cache       : false    
    		    //, contentType : "application/x-www-form- urlencoded;charset=UTF-8"
    		    , success     : function(data) {
    				alert("답변이 등록 되었습니다.");
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
