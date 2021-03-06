<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="formsContent">
	<!-- Form container -->
	<form id="accountForm" class="form-horizontal" autocomplete="off" method="POST" action="">
	<legend>Inregistrare</legend>
		<div class="control-group">
			<label class="control-label" for="cnp">CNP<em>*</em></label>
			<div class="controls">
				<input type="text" id="cnp" name="cnp" maxlength="50" value=""  placeholder="CNP">
				<span class="help-inline"></span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="lastName">Nume<em>*</em></label>
			<div class="controls">
				<input type="text" id="lastName" name="lastName" value="" maxlength="100" placeholder="Nume">
				<span class="help-inline"></span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="firstName">Prenume<em>*</em></label>
			<div class="controls">
				<input type="text" id="firstName" name="firstName" value="" maxlength="100" placeholder="Prenume">
				<span class="help-inline"></span>
			</div>
		</div>		
		<div class="control-group">
			<label class="control-label" for="email">Email</label>
			<div class="controls">
				<input type="text" id="email" name="email" placeholder="Email" value="" maxlength="100">
				<span class="help-inline"></span>
			</div>
		</div>		
		<div class="form-actions">
			<button id="saveButton" type="submit" class="btn btn-primary"><fmt:message key="domain.operation.create"/> <fmt:message key="domain.account"/></button>
			<button id="cancelButton" type="button" class="btn"><fmt:message key="button.operation.cancel"/></button>
		</div>		
	</form>
</div>
<script type="text/javascript" src="/resources/custom/js/Account/accountCreate.js"></script>	  		
