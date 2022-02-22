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

<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<g:applyLayout name="ala-main">
    <head>
        <title><g:layoutTitle/></title>
        <meta name="breadcrumb" content="${pageProperty(name: 'meta.breadcrumb', default: pageProperty(name: 'title').split('\\|')[0].decodeHTML())}"/>
        <meta name="breadcrumbParent" content="${pageProperty(name: 'meta.breadcrumbParent', default: "${createLink(uri: '/')},${message(code: 'page.index.heading', args: [orgNameShort])}")}"/>

        <script type="text/javascript">
            var BIE_VARS = { "autocompleteUrl" : "${grailsApplication.config.bie.index.url}/search/auto.jsonp"}
        </script>
        <g:layoutHead/>
    </head>
    <body>
        <g:layoutBody />
    </body>
</g:applyLayout>
