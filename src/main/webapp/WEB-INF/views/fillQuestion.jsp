
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="userHeader.jsp" />
<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->


<section id="main-content">

	<section class="wrapper">
		<h4>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSet
			Question</h4>
		<strong><h2>${message}</h2></strong>
		<!-- BASIC FORM ELELEMNTS -->
		<div class="row mt">
			<div class="col-lg-12">
				<div class="">

					<form:form action="addQuestion" method="post"
						cammandName="Question" class="form-horizontal style-form">

						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">Question1</label>
							<div class="col-sm-10">
								<select class="form-control" name="qus1" required="required">
									<option>Select</option>
									<option value="What is your first pet's name?">What is
										your first pet's name?</option>
									<option value="What is your mother's maiden name">What
										is your mother's maiden name</option>
									<option value="Your dream job?">Your dream job?</option>


								</select>
							</div>

							<label class="col-sm-2 col-sm-2 control-label">Answer</label>
							<div class="col-sm-10">
								<br> <input type="text" name="ans1" class="form-control"
									required="required">
							</div>

						</div>


	<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">Question1</label>
							<div class="col-sm-10">
								<select class="form-control" name="qus2" required="required">
									<option>Select</option>
									<option value="What is your first pet's name?">What is
										your first pet's name?</option>
									<option value="What is your mother's maiden name">What
										is your mother's maiden name</option>
									<option value="Your dream job?">Your dream job?</option>


								</select>
							</div>

							<label class="col-sm-2 col-sm-2 control-label">Answer</label>
							<div class="col-sm-10">
								<br> <input type="text" name="ans2" class="form-control"
									required="required">
							</div>

						</div>


	<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">Question1</label>
							<div class="col-sm-10">
								<select class="form-control" name="qus3" required="required">
									<option>Select</option>
									<option value="What is your first pet's name?">What is
										your first pet's name?</option>
									<option value="What is your mother's maiden name">What
										is your mother's maiden name</option>
									<option value="Your dream job?">Your dream job?</option>


								</select>
							</div>

							<label class="col-sm-2 col-sm-2 control-label">Answer</label>
							<div class="col-sm-10">
								<br> <input type="text" name="ans3" class="form-control"
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
</section>
