<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../common/script.jsp"/>
</head>

<body>
	<jsp:include page="../common/header.jsp"/>
	
    		<div class="bg row" style="margin: 3em 3em 3em 3em;" align="center">
    			<div class="col-sm-3">&nbsp;</div>
	    		<div class="col-sm-6">
	    			<div class="contact-form">
	    				<h2 class="title text-center">문의 등록</h2>
				    	<form action="/main/qa/saveQa.do" id="main-contact-form" class="contact-form row" name="contact-form" method="post">
				    		<input type="hidden" value="<%=member_no%>" name="member_no">
				            <div class="form-group col-md-12">
				                <input type="text" name="qa_title" class="form-control" required="required" placeholder="Subject">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="qa_content" id="qa_content" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" class="btn btn-primary pull-right" value="등록">
				            </div>
				        </form>
	    			</div>
	    		</div>    			
	    	</div> 
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>