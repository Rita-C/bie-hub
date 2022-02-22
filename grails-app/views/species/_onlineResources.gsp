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
<ul>
    <li><a href="${jsonLink}">JSON (data interchange format)</a></li>
    <li><a href="http://www.gbif.org/species/search?q=${tc?.taxonConcept?.nameString}">GBIF</a></li>
    <li><a href="http://eol.org/search?q=${tc?.taxonConcept?.nameString}&show_all=true">Encyclopedia of Life</a></li>
    <li><a href="http://www.biodiversitylibrary.org/search?searchTerm=${tc?.taxonConcept?.nameString}#/names">Biodiversity Heritage Library</a></li>
    <li><a href="http://www.eu-nomen.eu/portal/">PESI</a></li>
    <li><a href="http://www.arkive.org/explore/species?q=${tc?.taxonConcept?.nameString}">ARKive</a></li>
</ul>