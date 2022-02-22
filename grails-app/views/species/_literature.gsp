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
<section class="tab-pane fade" id="literature">
    <div class="row">
        <!--left-->
        <div class="col-md-3 sidebarCol">
            <div class="side-menu" id="sidebar">
                <nav class="navbar navbar-default" role="navigation">
                    <ul class="nav nav-stacked">
                        <li><a href="#bhl-integration"><g:message code="bhl.title.bhl"/></a></li>
                        <li><a href="#trove-integration"><g:message code="bhl.title.trove"/></a></li>
                    </ul>
                </nav>
            </div>
        </div><!--/left-->

    <!--right-->
        <div class="col-md-9" style="padding-top:14px;">

            <div id="bhl-integration">
                <%-- Scientific name search --%>
                <h3><g:message code="bhl.reference.found.bhl"/> <a href="${grailsApplication.config.literature.bhl.url}/search?SearchTerm=%22${synonyms?.join('%22+OR+%22')}%22&SearchCat=M#/names" target="_blank"><g:message code="bhl.title.bhl"/></a></h3>
                <div id="bhl-results-list" class="result-list">
                    <!-- Search results go here -->
                </div>
            </div>

            <div id="trove-integration" class="column-wrap" style="padding-top:50px;">
                %{--<h2>&nbsp;</h2>--}%
                <hr />
                <h3><g:message code="bhl.reference.found.trove"/> <a href="${grailsApplication.config.literature.trove.url}/result?q=%22${synonyms?.join('%22+OR+%22')}%22" target="_trove"><g:message code="bhl.title.trove"/></a></h3>

                <div id="trove-result-list" class="result-list">
                    <!-- Search results go here -->
                </div>
            </div>
        </div><!--/right-->
    </div><!--/row-->
</section>
