/*
 * Copyright (C) 2022 Atlas of Living Australia
 * All Rights Reserved.
 *
 * The contents of this file are subject to the Mozilla Public
 * License Version 1.1 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of
 * the License at http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS
 * IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * rights and limitations under the License.
 */

$(document).ready(function () {
    // autocomplete
    var bieBaseUrl = SEARCH_CONF.bieWebServiceUrl;
    var bieParams = { limit: 20 };
    var autoHints = SEARCH_CONF.autocompleteHints; // expects { fq: "kingdom:Plantae" }
    $.extend( bieParams, autoHints ); // merge autoHints into bieParams

    function getMatchingName(item) {
        if (item.commonNameMatches && item.commonNameMatches.length) {
            return item.commonName;
        } else {
            return item.name;
        }
    };

    function formatAutocompleteList(list) {
        var results = [];
        if (list && list.length){
            list.forEach(function (item) {
                var name = getMatchingName(item);
                results.push({label: name, value: name});
            })
        }

        return results;
    };

    $.ui.autocomplete({
        source: function (request, response) {
            bieParams.q = request.term;
            $.ajax( {
                url: bieBaseUrl + '/search/auto.json',
                dataType: "json",
                data: bieParams,
                success: function( data ) {
                    response( formatAutocompleteList(data.autoCompleteList) );
                }
            } );
        }
    }, $(":input#autocompleteResultPage, :input#search"));
});