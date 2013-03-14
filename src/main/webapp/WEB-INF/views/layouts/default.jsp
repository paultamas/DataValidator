<%@include file="/WEB-INF/views/includes/taglibs.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<tiles:importAttribute />
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title><tiles:insertAttribute name="title-content" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta name="description" content="Data Verifier Application" />
<link rel="shortcut icon" href="resources/img/favicon.png" type="image/png" />

<!-- Le styles -->
<link rel="stylesheet" href="/resources/common/css/reset.meyer-2.0.min.css" media="all" />
<link rel="stylesheet" href="/resources/common/css/base.css" media="all" />
<link rel="stylesheet" href="/resources/common/css/bootstrap.css" media="all" />
<link rel="stylesheet" href="/resources/common/css/bootstrap-responsive.css" media="all" />
<link rel="stylesheet" href="/resources/common/css/bootstrap-base.css" media="all" />
<link rel="stylesheet" href="/resources/common/css/commons.css" media="all" />
<link rel="stylesheet" href="/resources/common/js/jquery/message/css/jquery.message-1.0.css" media="all" />
<link rel="stylesheet" href="/resources/common/js/jquery/message/css/jquery.message-1.0.customizations.css" media="all" />
<link rel="stylesheet" href="/resources/common/css/dataTableStyle.css" media="all" />

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Le favicon and touch icons -->
<link rel="shortcut icon" href="http://twitter.github.com/bootstrap/assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
</head>
<body id="${pageName}" class="base"
	data-search-url='<c:url value='/search'/>' 
	data-required='<spring:message code="required"/>' 
	data-email='<spring:message code="email"/>'
	data-remote='<spring:message code="remote"/>' 
	data-equalto='<spring:message code="equalto"/>' 
	data-minlength='<spring:message code="minlength"/>'
	data-maxlength='<spring:message code="maxlength"/>' 
	data-firstname='<spring:message code="firstname"/>' 
	data-lastname='<spring:message code="lastname"/>'
	data-password='<spring:message code="password"/>' 
	data-passwordconfirm='<spring:message code="passwordconfirm"/>'
	data-noneselected='<spring:message code="domain.account.column.roles.noneselected"/>' 
	data-selected='<spring:message code="domain.account.column.roles.selected"/>'
	data-movietitle='<spring:message code="domain.movie.column.title.validation"/>' 
	data-movieyear='<spring:message code="domain.movie.column.year.validation"/>'
	data-movieyear='<spring:message code="domain.movie.column.year.validation"/>' 
	data-enterrolename='<spring:message code="domain.role.column.enterrolename"/>'
	data-accountcreate='<spring:message code="domain.account.create.legend"/>' 
	data-accountedit='<spring:message code="domain.account.edit.legend"/>'
	data-accountdelete='<spring:message code="domain.account.delete.legend"/>' 
	data-moviecreate='<spring:message code="domain.movie.create.legend"/>'
	data-movieedit='<spring:message code="domain.movie.edit.legend"/>' 
	data-moviedelete='<spring:message code="domain.movie.delete.legend"/>'
	data-rolecreate='<spring:message code="domain.role.create.legend"/>' 
	data-roleedit='<spring:message code="domain.role.edit.legend"/>'
	data-roledelete='<spring:message code="domain.role.delete.legend"/>'
	data-choosetemplate='<spring:message code="navbar.menu.choosetemplate"/>'
	data-noinfosourceselected='<spring:message code="searchPage.no.infosource.selected"/>'
	data-movierequired='<spring:message code="searchPage.movie.required"/>'		
	>

	<!-- Javascript-->	
	<script type="text/javascript" src="/resources/common/js/inheritance/inheritance-1.0.min.js"></script>	  		
	<script type="text/javascript" src="/resources/common/js/jquery/jquery-1.8.3.min.js"></script>	  		
	<script type="text/javascript" src="/resources/common/js/bootstrap.js"></script>	  		
	<script type="text/javascript" src="/resources/common/js/base.js"></script>	  		
	<script type="text/javascript" src="/resources/common/js/jquery/message/js/jquery.message-1.0.min.js"></script>	  		
	<script type="text/javascript" src="/resources/common/js/jquery.dataTables.js"></script>	  		
	<script type="text/javascript" src="/resources/common/js/dataTablesPagination.js"></script>	  		
	<script type="text/javascript" src="/resources/common/js/jquery.validate.js"></script>	  		
	<tiles:insertAttribute name="navbar-content" />
	<div class="container">
		<tiles:insertAttribute name="main-content" />
	</div>
	<footer>
		<tiles:insertAttribute name="footer-content" />
	</footer>
	<tiles:insertAttribute name="modal-content" />
</body>
</html>
