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

package au.org.ala.bie

class BootStrap {

    def messageSource

    def init = { servletContext ->
//        messageSource.setBasenames(
//                // For some reason, setting basenames in BiePluginGrailsPlugin
//                // does not work as expected extending PluginAwareResourceBundleMessageSource
//                // https://stackoverflow.com/questions/16063391/grails-override-a-bean-property-value-in-resources-groovy
//                // so we do here that works:q
//                "file:///var/opt/atlas/i18n/bie-plugin/messages",
//                "file:///opt/atlas/i18n/bie-plugin/messages",
//                "classpath:grails-app/i18n/messages",
//                "classpath:messages"
//        )
        Object.metaClass.trimLength = { Integer stringLength ->

            String trimString = delegate?.toString()
            String concatenateString = "..."
            List separators = [".", " "]

            if (stringLength && (trimString?.length() > stringLength)) {
                trimString = trimString.substring(0, stringLength - concatenateString.length())
                String separator = separators.findAll { trimString.contains(it) }?.min { trimString.lastIndexOf(it) }
                if (separator) {
                    trimString = trimString.substring(0, trimString.lastIndexOf(separator))
                }
                trimString += concatenateString
            }
            return trimString
        }
    }

    def destroy = {
    }
}
