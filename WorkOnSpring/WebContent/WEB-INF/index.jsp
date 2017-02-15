<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<spring:url value="resources/index.css" var="crunchifyCSS" />
<link href="${crunchifyCSS}" rel="stylesheet" />
<link href="${pageContext.request.contextPath}WEB-INF/resources/index.css" rel="stylesheet" />
<style>
.red-tooltip + .tooltip > .tooltip-inner {background-color: #f00;}
.red-tooltip + .tooltip.top > .tooltip-arrow {background-color: #f00;}
.red-tooltip + .tooltip.top > .tooltip-arrow { border-right-color:#f00; }
.red-tooltip + .tooltip > .tooltip-inner  { color:#fff; border: 1px solid green; padding: 10px;font-size: 12px;width: 400px;}
.red-tooltip + .tooltip.top > .tooltip-arrow {border-top: 5px solid green;}
.red-tooltip + .tooltip.bottom > .tooltip-arrow {border-bottom: 5px solid blue;}
.red-tooltip + .tooltip.left > .tooltip-arrow { border-left: 5px solid red;}
.red-tooltip + .tooltip.right > .tooltip-arrow {     border-right: 5px solid black;}
.form-control-feedback {
    position: absolute;
    top: 0;
    right: 0;
    z-index: 2;
    display: block;
    width: 34px;
    height: 34px;
    line-height: 34px;
    text-align: center;
    pointer-events: none;
}
i.mysize {font-size: 1.7em;}
</style>
<script type="text/javascript">
$(document).ready(function () 
		{
	 		$('[data-toggle="tooltip"]').tooltip({trigger: 'manual'});
	 		
			$("#bt").click(function() 
			{	
				
				passwordValidation("password");
			});
			$("#password").click(function() 
					{	
						passwordValidation("password");
					});
			$("#password").blur(function() 
					{	
						$("#password").tooltip("hide");
					});
			
		});
function passwordValidation(id) 
{
	var password=$("#"+id).val();

	if(password=="")
		{
		
		

			display("Enter the password",id);
			return false;
		}
	else if(password.length<8||password.length>13)
	{
		display("Please check the password",id);
		return false;
	}
}
function display(msg,id) 
{
	
	$("#"+id).attr("title", msg).tooltip('fixTitle').tooltip('show');
	$('[data-toggle="tooltip"]').find(".tooltip.fade").addClass("in");
	
}
</script>
</head>
<body>
<div class="content-fluid " >
	<div   style="background: linear-gradient( #fefeff,#d4d9e8); height: 700px;">
		<div class="row">
			<div class=" col-lg-12 col-md-12   col-sm-12  col-xs-12 text-center "  style=" background: linear-gradient( #48D1CC,#D1F4F2);" >
				<div style="margin-top: 17px">
						<label class="dd" ><b>REGISTRATION FORM</b></label>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 20px;">
			<div class=" col-lg-3 col-md-3   col-sm-3  col-xs-3  " >
			
			</div>
			<div class=" col-lg-6 col-md-6   col-sm-6  col-xs-6  " >
				<form:form name="Registration" id="Registration" action="registration" method="POST" class="form-horizontal" onsubmit="return regvalidation();"  enctype="multipart/form-data" >
					<div id="fname_div" class="  form-group  "  >
						<input type="text"  placeholder="First name" id="fname" required=""   name="fname" class="form-control "  />
						<i id="fname_i" style="margin-right: 14px;" class = "glyphicon glyphicon-exclamation-sign mysize form-control-feedback"></i>
					</div>
					<div id="lname_div" class="form-group "   >	
						<input type="text"  placeholder="Surname" id="lname" required="" name="lname" class="form-control "/>
						<i id="lname_i" style="margin-right: 14px;" class = "glyphicon glyphicon-exclamation-sign mysize form-control-feedback"></i>
					</div>
					<div id="email_div" class=" form-group " >
						<input type="text"   placeholder="Email address" required="" name="email" id="email" data-placement="right" data-toggle="tooltip" title="Hooray!" class="red-tooltip form-control " />
						<i id="email_i" style="margin-right: 14px;" class = "glyphicon glyphicon-exclamation-sign mysize form-control-feedback"></i>
					</div>
					<div id="password_div" class="form-group " >
						<input type="text"  placeholder="New password" data-placement="right auto" data-toggle="tooltip"   required="" name="password" id="password" class="red-tooltip form-control "/>
						<i id="password_i" style="margin-right: 14px;" class = "glyphicon glyphicon-exclamation-sign mysize form-control-feedback"></i>
					</div>
					<div id="file_div" class=" form-group " >
						<input type="file" name="file"  class="form-control "/>
						<i id="file_i" style="margin-right: 14px;" class = "glyphicon glyphicon-exclamation-sign mysize form-control-feedback"></i>
					</div>
					<div class="form-group  " >
						<input type="submit" id="bt" class="btn btn-success col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6   col-sm-6  col-xs-6 " name="bt" value="Submit"  />
					</div>
				</form:form>
			</div>
			<div class=" col-lg-3 col-md-3   col-sm-3  col-xs-3  " >
			
			</div>
		</div>
	</div>
</div>
</body>
</html>