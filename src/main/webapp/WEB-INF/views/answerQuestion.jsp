<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<jsp:include page="userHeader.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<section id="main-content">

	<section class="wrapper">
		<h4>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		Fill this information</h4>
		<strong><h2>${message}</h2></strong>
		<!-- BASIC FORM ELELEMNTS -->
		<div class="row mt">
			<div class="col-lg-12">
				<div class="">

					<form:form action="answerCheck"  class="form-horizontal style-form">

						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">Question</label>
							<div class="col-sm-10">
						
					 <input type="text" name="userQuestion"  value="${question}" class="form-control"
									readonly="readonly">
						
							</div>

	

							<label class="col-sm-2 col-sm-2 control-label">Answer</label>
							<div class="col-sm-10">
							<br>
								<input type="text" name="useranswer" class="form-control"
									required="required">
							</div>

						</div>





						<div class="form-group">
							<div class="col-sm-10">
								<center>
									<input type="submit" class="form-submit" value="Submit">
								</center>
							</div>
						</div>



					</form:form>
				</div>
			</div>
			<!-- col-lg-12-->
		</div>
		<!-- /row -->




	</section>
	<! --/wrapper -->
</section>

</form>
</body>
</html>