<ul>
    <li><a href="${grailsApplication.config.biocache.baseURL}/occurrences/search?taxa=${tc?.taxonConcept?.nameString?.replace(" ","%20")}"><g:message code="online.resources.occurrences" args="[grailsApplication.config.skin.orgNameShort]" /></a></li>
    <li><a href="https://www.gbif.org/species/search?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">GBIF</a></li>
    <li><a href="https://eol.org/search?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}&show_all=true"><g:message code="online.resources.encyclopedia.of.life" /></a></li>
    <li><a href="https://www.biodiversitylibrary.org/search?searchTerm=${tc?.taxonConcept?.nameString?.replace(" ","%20")}#/names"><g:message code="online.resources.bhl" /></a></li>
    %{--<li><a href="https://www.arkive.org/explore/species?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">ARKive</a></li>--}%
    %{--<li><a href="https://www.inaturalist.org/taxa/search?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">iNaturalist</a></li>--}%
    <li><a href="${grailsApplication.config.literature.google.url}/search?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}"><g:message code="online.resources.google.search" /></a></li>
    <li><a href="${grailsApplication.config.literature.scholar.url}/scholar?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}"><g:message code="online.resources.google.scholar" /></a></li>
</ul>
