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
<div class="results-summary">
    <g:if test="${!max}">
        <g:message code="page.bhl.none" args="${[search.join(', ')]}"/>
    </g:if>
    <g:else>
    <g:message code="page.bhl.showing" args="${[ start + 1, Math.min(max, start + rows), max, search.join(', ')]}"/>
    <g:each var="item" in="${results}" status="is">
        <div class="result">
            <g:if test="${item.thumbnailUrl}"><div class="pull-right" style="margin-left: 1ex;"><img class="img-thumbnail bhl-thumbnail" src="${item.thumbnailUrl}"/></div></g:if>
            <h3><span class=bhlIndex"><b>${is + start + 1}</b>.&nbsp;</span><a href="${item.link}">${item.title}</a></h3>
            <g:render template="/bibliography/item" model="${[item: item]}"/>
            <div class="clearfix"></div>
        </div>
    </g:each>
        <div class="button-bar">
            <g:if test="${start - rows > 0}"><input type="button" class="btn" value="Previous page" onclick="loadBhl(${start - rows}, ${rows}, true)"></g:if>
            <g:if test="${start + rows < max}"><input type="button" class="btn" value="Next page" onclick="loadBhl(${start + rows}, ${rows}, true)"></g:if>
        </div>
    </g:else>
</div>