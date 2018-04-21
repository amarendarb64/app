    <!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>LoginPage</title>

    <!-- Bootstrap core CSS -->
    <link href="./resources/static/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="./resources/static/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="./resources/static/css/style.css" rel="stylesheet">
    <link href="./resources/static/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<script>
function checkUserName()
{
	//alert();
	var name= document.getElementById("userName").value;
	var re = /^[a-zA-Z0-9]*$/;
	if (! re.test(name))
	{	
		alert("Only alphanumeric allowed in username");
		 document.getElementById("userName").value = "";
	}
	
	}

</script>
  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
<br><br><br><br><br><br>
	  <div id="login-page">
	  	<div class="container">
	  	
		      <form:form class="form-login" action="verifyUser" method="post" commandName="Login">
		        <h2 class="form-login-heading">Login Now</h2>
		           <center> <span>${message}</span></center>
		        <div class="login-wrap">
		            <input type="text" class="form-control-login" id="userName" name="userName" onchange="checkUserName()" placeholder="User Name" autofocus>
		            <br>
		           
		          
		                
		            <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> Login</button>
		         
		            
		
		        </div>
		
		</form:form>
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="./resources/static/js/jquery.js"></script>
    <script src="./resources/static/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="./resources/static/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("", {speed: 500});
    </script>


  </body>
</html>
    