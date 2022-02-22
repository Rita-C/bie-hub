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
<section class="tab-pane fade" id="gallery">
    <g:each in="${["type","specimen","other","uncertain"]}" var="cat">
        <div id="cat_${cat}" class="hide image-section">
            <h2><g:message code="images.heading.${cat}" default="${cat}"/>&nbsp;
                <div class="btn-group btn-group-sm" role="group">
                    <button type="button" class="btn btn-sm btn-default collapse-image-gallery" onclick="collapseImageGallery(this)"><g:message code="gallery.button.collapse"/></button>
                    <button type="button" class="btn btn-sm btn-default btn-primary expand-image-gallery" onclick="expandImageGallery(this)"><g:message code="gallery.button.expand"/></button>
                </div>
            </h2>

            <div class="taxon-gallery"></div>
        </div>

    </g:each>

    <div id="cat_nonavailable">
        <h2><g:message code="gallery.title"/></h2>


        <p>
            <g:message code="gallery.description.01"/>
            ${raw(grailsApplication.config.skin.orgNameLong)},
            <g:message code="gallery.description.02"/>
        </p>
    </div>
    <img src="${resource(dir: 'images', file: 'spinner.gif', plugin: 'biePlugin')}" id="gallerySpinner" class="hide" alt="spinner icon"/>
</section>
