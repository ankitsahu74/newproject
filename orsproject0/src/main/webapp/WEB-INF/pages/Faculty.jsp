<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
</br>
<body>
	<div class="row">

		<div class="col-md-3"></div>
		<div class="col-md-5">
			<div class="card c1">
				<div class="card-body c1">
					<h3 class="text-center default-text py-3">
						<c:choose>
							<c:when test="${form.id==0}">
								<s:message code="label.addfaculty" />
							</c:when>
							<c:otherwise>
								<s:message code="label.updatefaculty"></s:message>
							</c:otherwise>
						</c:choose>
					</h3>

					<div>
						<c:if test="${error!=null }">
							<div class="alert alert-danger alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
								<div class="message">
									<i class="nc-icon nc-bell-55"></i>${error}
								</div>
							</div>
						</c:if>

						<c:if test="${success!=null }">
							<div class="alert alert-success alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
								<div class="message">
									<i class="nc-icon nc-bell-55"></i>${success}
								</div>
							</div>
						</c:if>
					</div>
					<sf:form method="post" modelAttribute="form">
						<sf:hidden path="id" />
						<sf:hidden path="createdBy" />
						<sf:hidden path="modifiedBy" />
						<sf:hidden path="createdDatetime" />
						<sf:hidden path="modifiedDatetime" />

						<sf:label path="firstName">
							<s:message code="label.firstName" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">

							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="fa fa-user  grey-text"></span>
								</span>
							</div>
							<sf:input path="firstName" class="form-control"
								placeholder="${enterfirstName}" />
						</div>
						<font color="red"><sf:errors path="firstName" /></font>
						<br>

						<sf:label path="lastName">
							<s:message code="label.lastName" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">

							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="fa fa-user-circle  grey-text"></span>
								</span>
							</div>
							<sf:input path="lastName" class="form-control"
								placeholder="${enterLastName}" />
						</div>
						<font color="red"><sf:errors path="lastName" /></font>
						<br>

						<sf:label path="gender">
							<s:message code="label.gender" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">

							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="fa fa-venus-mars grey-text"></span>
								</span>
							</div>
							<sf:select path="gender" class="form-control">
								<sf:option value="">
									<s:message code="label.selectgender"></s:message>
								</sf:option>
								<sf:options items="${genderList}" />
							</sf:select>
						</div>
						<font color="red"><sf:errors path="gender" /></font>
						<br>


						<sf:label path="subjectId">
							<s:message code="label.subject" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="fa fa-book  grey-text"></span>
								</span>
							</div>
							<sf:select path="subjectId" class="form-control">
								<sf:option value="0">
									<s:message code="label.selectsubject"></s:message>
								</sf:option>
								<sf:options items="${subjectList}" itemValue="id"
									itemLabel="name" />
							</sf:select>
						</div>
						<font color="red"><sf:errors path="subjectId" /></font>
						<br>

						<sf:label path="courseId">
							<s:message code="label.course" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="fa fa-user-md  grey-text"></span>
								</span>
							</div>
							<sf:select path="courseId" class="form-control">
								<sf:option value="0">
									<s:message code="label.selectcourse"></s:message>
								</sf:option>
								<sf:options items="${courseList}" itemValue="id"
									itemLabel="name" />
							</sf:select>
						</div>
						<font color="red"><sf:errors path="courseId" /></font>
						<br>

						<sf:label path="collegeId">
							<s:message code="label.college" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="far fa-building  grey-text"></span>
								</span>
							</div>
							<sf:select path="collegeId" class="form-control">
								<sf:option value="0">
									<s:message code="label.selectcollege"></s:message>
								</sf:option>
								<sf:options items="${collegeList}" itemValue="id"
									itemLabel="name" />
							</sf:select>
						</div>
						<font color="red"><sf:errors path="collegeId" /></font>
						<br>

						<sf:label path="dob">
							<s:message code="label.dob" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">

							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="fa fa-calendar  grey-text"></span>
								</span>
							</div>
							<sf:input readonly="readonly" path="dob" class="form-control"
								placeholder="${enterdob}" id="datepicker" />
						</div>
						<font color="red"><sf:errors path="dob" /></font>
						<br>

						<sf:label path="mobileNo">
							<s:message code="label.mobileNo" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">

							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="fa  fa-phone-square grey-text"></span>
								</span>
							</div>
							<sf:input path="mobileNo" class="form-control" maxlength="10"
								placeholder="${enterMobile}" />
						</div>

						<font color="red"><sf:errors path="mobileNo" /></font>
						<br>

						<sf:label path="emailId">
							<s:message code="label.emailId" />
							<s:message code="label.id" />
							<span style="color: red;">*</span>
						</sf:label>
						<div class="input-group">

							<div class="input-group-prepend">
								<span class="input-group-text"> <span
									class="fas fa-envelope grey-text"></span>
								</span>
							</div>
							<sf:input path="emailId" class="form-control"
								placeholder="${enteremail}" />
						</div>

						<font color="red"><sf:errors path="emailId" /></font>
						<br>


						<div>
							<c:choose>
								<c:when test="${form.id==0}">
									<center>
										<button type="submit" class=" btn btn-success"
											name="operation" value="Save">
											<s:message code="label.save" />
										</button>
										<button type="submit" class="btn btn-danger" name="operation"
											value="Reset">
											<s:message code="label.reset" />
										</button>
									</center>
								</c:when>
								<c:otherwise>
									<center>
										<button type="submit" class="btn btn-success" name="operation"
											value="Save">
											<s:message code="label.update" />
										</button>
										<button type="submit" class=" btn btn-warning"
											name="operation" value="Cancel">
											<s:message code="label.cancel" />
										</button>
									</center>
								</c:otherwise>
							</c:choose>
						</div>





						<br>
						<br>
						<style>
.c1 {
	border-width: 5px;
	border-style: ridge;
	border-radius: 25px;
}

i.css {
	border-radius: 6px 0px 0px 6px;
	border: 1px solid #ced4da;
	padding-left: 15px;
	padding-bottom: 18px;
	background-color: #e9ecef;;
}

.btn {
	padding: 20px;
}

.card {
	background-color: #ECEFF1;
}

body {
	background-image:
		url("http://localhost:8080/orsproject0/resources/img/image6.png");
}
</style>
						<script type="text/javascript">
							$(function() {
								$("#datepicker").datepicker({
									changeMonth : true,
									changeYear : true,
									yearRange : '1970:2030',
									dateFormat : 'dd/mm/yy',
									endDate : '-18y'
								});
							});
						</script>

					</sf:form>
				</div>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
	<br>
	<br>
</body>
