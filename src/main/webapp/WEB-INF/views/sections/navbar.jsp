<%@include file="/WEB-INF/views/includes/taglibs.jsp"%>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a class="brand" href="${pageContext.request.contextPath}/">Data Verifier&nbsp;<span class="label label-info"><fmt:message key="header.webapp.version"/></span></a>
			
				<div class="nav-collapse">
					<ul class="nav">
						<li id="homePageLink">
							<a href="${pageContext.request.contextPath}/"><fmt:message key="navbar.menu.home"/></a>
						</li>
						<li id="domainPageLink" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><fmt:message key="navbar.menu.domain"/><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/domain/accounts/list"><fmt:message key="navbar.menu.domain.account"/></a></li>																
							</ul>
						</li>						
					</ul>	
				</div>			
		</div>
	</div>
</div>