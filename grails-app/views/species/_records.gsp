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
<section class="tab-pane fade" id="records">

    <div class="pull-right btn-group btn-group-vertical">
        <a class="btn btn-default"
           href="${biocacheUrl}/occurrences/search?q=lsid:${tc?.taxonConcept?.guid ?: ''}">
            <i class="glyphicon glyphicon-th-list"></i>
            <g:message code="records.list.all.records.button"/>
            (<span class="occurrenceRecordCount">0</span> <g:message code="records"/>)
        </a>
        <a class="btn btn-default"
           href="${biocacheUrl}/occurrences/search?q=lsid:${tc?.taxonConcept?.guid ?: ''}#tab_mapView">
            <i class="glyphicon glyphicon-map-marker"></i>
            <g:message code="records.list.all.map.button"/>
            (<span class="occurrenceRecordCount">0</span> <g:message code="records"/>)
        </a>
    </div>

    <div id="occurrenceRecords">
        <div id="recordBreakdowns" style="display: block;">
            <h2>
                <g:message code="records.title"/>
                (<span class="occurrenceRecordCount">0</span> <g:message code="records"/>)
            </h2>
            %{--<div id="chartsHint">Hint: click on chart elements to view that subset of records</div>--}%
            <div id="charts"></div>
        </div>
    </div>
</section>
