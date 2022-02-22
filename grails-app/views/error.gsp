%{--
- Copyright (C) 2022 Atlas of Living Australia
- All Rights Reserved.
-
- The contents of this file are subject to the Mozilla Public
- License Version 1.1 (the "License"); you may not use this file
- except in compliance with the License. You may obtain a copy of
- the License at http://www.mozilla.org/MPL/
-
- Software distributed under the License is distributed on an "AS
- IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
- implied. See the License for the specific language governing
- rights and limitations under the License.
--}%
<!DOCTYPE html>
<html>
	<head>
		<title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
		<meta name="layout" content="${grailsApplication.config.skin.layout}">
		<g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
	</head>
	<body>
	<h2>An error has occurred</h2>
	<ul class="errors">
			<li>${message}</li>
			<g:if test="${exception}">
				<li><g:renderException exception="${exception}" /></li>
			</g:if>
		</ul>
	<p>If this problem persists, please send an email to <a href="mailto:support@ala.org.au?subject=Error page for: ${grailsApplication.config.serverName}${request.forwardURI}">support@ala.org.au</a>.</p>
	</body>
</html>
