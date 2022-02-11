package au.org.ala.bie

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration

class Application extends GrailsAutoConfiguration {

    Closure doWithSpring() {
        { ->
            // TODO Implement runtime spring config (optional)

            // Custom message source
            messageSource(ExtendedPluginAwareResourceBundleMessageSource) {
                // basename = "classpath:grails-app/i18n/messages"
                cacheSeconds = 10 //(60 * 60 * 6)
                useCodeAsDefaultMessage = true
                defaultEncoding = "UTF-8"
            }
        }
    }
    static void main(String[] args) {
        GrailsApp.run(Application, args)
    }
}