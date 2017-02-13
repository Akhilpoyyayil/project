<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div class="content-fluid " >
	<div   style="background: linear-gradient( #fefeff,#d4d9e8); height: 700px;">
		<div class="row">
			<div class=" col-lg-12 col-md-12   col-sm-12  col-xs-12 text-center "  style=" background: linear-gradient( #48D1CC,#D1F4F2);" >
				<div style="margin-top: 17px">
						<label style=" color: white; font-size: 40px; font-family: " ><b>REGISTRATION FORM</b></label>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 20px;">
			<div class=" col-lg-3 col-md-3   col-sm-3  col-xs-3  " >
			
			</div>
			<div class=" col-lg-6 col-md-6   col-sm-6  col-xs-6  " >
				<form:form name="Registration" action="registration" method="POST" class="form-horizontal" onsubmit="return regvalidation();">
					<div id="fname_div" class="  form-group  "  >
						<input type="text"  placeholder="First name" id="fname" required=""   name="fname" class="form-control "  />
					</div>
					<div id="lname_div" class="form-group "   >	
						<input type="text"  placeholder="Surname" id="lname" required="" name="lname" class="form-control "/>
					</div>
					<div id="email_div" class=" form-group " >
						<input type="text"   placeholder="Email address" required="" name="email" id="email" class="form-control " />
					</div>
					<div id="password_div" class="form-group " >
						<input type="text"  placeholder="New password" required="" name="password" id="password" class="form-control "/>
					</div>
					<div id="file_div" class=" form-group " >
						<input type="file" name="file" id="file" class="form-control "/>
					</div>
					<div class="form-group  " >
						<input type="submit" class="btn btn-success col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6   col-sm-6  col-xs-6 " name="name" value="Submit"  />
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