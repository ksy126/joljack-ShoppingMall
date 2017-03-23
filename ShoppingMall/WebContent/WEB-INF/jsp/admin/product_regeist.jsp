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
	            <h1 class="page-header">상품 등록</h1>
	        </div>
	    </div>
	
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="fa fa-bar-chart-o fa-fw"></i> 상품 등록하기
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-lg-9 col-lg-offset-1">
	                        	<form role="form">
	                                <div class="form-group">
	                                    <label>상품 이름</label>
	                                    <input class="form-control" id="p_name">
	                                </div>
	                                
	                                <div class="form-group">
                                        <label>상품 카테고리</label>
                                        <select class="form-control" id="p_category">
                                            <option value="outer">OUTER</option>
                                            <option value="top">TOP</option>
                                            <option value="shirt">SHIRT & KNIT</option>
                                            <option value="pants">PANTS</option>
                                            <option vlaue="acc">ACC</option>
                                        </select>
                                    </div>
                                    
                                    <div class="form-group">
	                                    <label>상품 가격</label>
	                                    <input class="form-control" id="p_price">
	                                </div>
	                                
	                                <div class="form-group">
	                                    <label>상품 수량</label>
	                                    <input class="form-control" id="p_amount">
	                                </div>
	                                
                                    <div class="form-group">
                                        <label>상품 이미지 등록</label>
                                        
                                    	<input type="hidden" id="fileUploadPath" name="fileUploadPath" value="" />
										<input type="hidden" id="fileNewName" name="fileNewName" value="" />
										<input type="hidden" id="destination" name="destination" value="" />
                                        <form id="file_upload" name="file_upload" method="post" accept="image/*;capture=camera" enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do?fileGbn=product">
											<input type="file" name="file" value="" id="file"  style="height: 25px;"/>
										</form>                                        
                                    </div>
                                        
	                                <div class="form-group">
                                        <label>상품 상세 정보</label>
                                        <textarea class="form-control" style="resize: none; wrap:hard;" rows="6" id="p_info"></textarea>
                                    </div>
                                    
                                    <div>
                                    	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="app.productWrite();">등록</button>
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
    
    _this.env
    
    // ENV
    _this.env = {};
    _this.env.p_name = $('#p_name');
    _this.env.p_category = $('#p_category');
    _this.env.p_info = $('#p_info');
    _this.env.p_price = $('#p_price');
    _this.env.p_amount = $('#p_amount');
    
    // 상품 등록
    _this.productWrite = function() {
    	var params = {
    		p_name : _this.env.p_name.val(),
    		p_category : _this.env.p_category.val(),
    		p_price : _this.env.p_price.val(),
    		p_amount : _this.env.p_amount.val(), 
    		p_info : _this.env.p_info.val()	
    	};
    	
		$.ajax({
		      type        : "POST"
		    , async       : true
		    , url         : "/admin/save/product.do"
		    , data        : params
		    , dataType    : "json"
		    , timeout     : 30000  
		    , cache       : false    
		    //, contentType : "application/x-www-form- urlencoded;charset=UTF-8"
		    , success     : function(data) {
		
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
<script type="text/javascript">
$(document).ready(function(){
	//-----------------//
	// 폼 전송후 콜백함수 호출   //
	//-----------------//
	var options = {
		dataType : "json",
		contentType : "application/x-www-form-urlencoded;charset=UTF-8" ,
		success : function(data){          
			if(data.resultCode == '1') {
				$( "#fileUploadPath" ).val(data.fileUploadPath);
				$( "#fileNewName").val(data.fileName);
				$( "#destination").val(data.destination);
				saveCompanyFile();
			} else{
				alert( "첨부파일 등록에 실패하였습니다.");
			}
		},
			error : function(xhr, error, data) {
			alert( "파일 업로드에 실패하였습니다.");
		}
	};
	$("#file_upload").ajaxForm(options);
);//end document
	
	//저장전 유효성검사 및 파일업로드
	function Sym_save(){		
		var file = $('#file').val();
		
		if( file == '' || file == 'undefined'){
			
		} else {
			var frm = $( '#file_upload');
			save_file(frm);
			return false;
		}
	}
	
	function save_sympathy(){
		
		var img_Name = $('#fileNewName').val();
		var img_path = $('#fileUploadPath').val();
		
		var params = "img_Name="+img_Name+"&img_Path="+img_path;

        $.ajax({
            type        : "POST" 
          , async       : false
          , url         : "/admin/save_img_cg.do"
          , data        : params
          , dataType    : "json"
          , timeout     : 30000  
          , cache       : false
          , error       : function(request, status, error) {
             alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );    
          }
          , success     : function(data) {
          				alert("이미지 등록이 완료 되었습니다.");
          				location.reload();
          }
  		});	
	}
	
	function save_file(frm){
		frm.submit();       
	}
	
	function saveCompanyFile(){
		var params = "";
		var file_name = jQuery("#fileNewName" ).val();
		var destination =  jQuery("#destination").val();
		var member_no = "cg";
		params = "fileNewName=" + jQuery("#fileNewName" ).val() + "&fileUploadPath=" + jQuery("#fileUploadPath" ).val() + "&member_no=" + member_no+"&destination=" + destination;
		
		$.ajax({
			 type        : "POST" 
			, async       : true
			, url         : "/cmd/saveCompanyFile.do"
			, data        : params
			, dataType    : "json"
			, timeout     : 30000  
			, cache       : false
			, error       : function(request, status, error) {
				alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );       
			}
			, success     : function(data) {
				$("#fileUploadPath" ).val(data.fileUploadPath);
				$("#fileNewName").val(data.fileNewName);
				save_sympathy();
			}
		});
	}
</script>
</body>
</html>
