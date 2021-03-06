<%@include file="/WEB-INF/views/includes/taglibs.jsp"%>

<div id="formsContent">
	<!-- Form container -->
	<form id="accountEditForm" class="form-horizontal" autocomplete="off" method="POST" action="">
	<legend>Editare</legend>
		<div class="control-group hidden">
			<label class="control-label" for="id"><fmt:message key="domain.account.column.id"/><em>*</em></label>
			<div class="controls">
				<input type="text" id="id" name="id" readOnly="true" value="${crudObj.id}" maxlength="100" data-reset="${crudObj.id}">
				<span class="help-inline"></span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="cnp">CNP<em>*</em></label>
			<div class="controls">
				<input type="text" id="cnp" name="cnp" maxlength="50" value="${crudObj.cnp}"  placeholder="CNP">
				<span class="help-inline"></span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="lastName">Nume<em>*</em></label>
			<div class="controls">
				<input type="text" id="lastName" name="lastName" value="${crudObj.lastName}" maxlength="100" placeholder="Nume">
				<span class="help-inline"></span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="firstName">Prenume<em>*</em></label>
			<div class="controls">
				<input type="text" id="firstName" name="firstName" value="${crudObj.firstName}" maxlength="100" placeholder="Prenume">
				<span class="help-inline"></span>
			</div>
		</div>		
		<div class="control-group">
			<label class="control-label" for="email">Email</label>
			<div class="controls">
				<input type="text" id="email" name="email" placeholder="Email" value="${crudObj.email}" maxlength="100">
				<span class="help-inline"></span>
			</div>
		</div>		
		<div class="form-actions">
			<button id="saveButton" type="submit" class="btn btn-primary"><fmt:message key="button.operation.save"/> <fmt:message key="domain.account"/></button>			
			<a href="${pageContext.request.contextPath}/" id="cancelButton" class="btn"><fmt:message key="button.operation.cancel"/></a>			
		</div>		
	</form>
</div>
<script type="text/javascript" src="/resources/custom/js/Account/accountUpdate.js"></script>	  				
