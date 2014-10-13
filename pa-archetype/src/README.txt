OVERVIEW
--------

This archetype project is used to build ISAAC application builds that
are specifically configured for particular environments.

To add a new variable to this archetype, do so in the following 5 places
* top level pom.xml file
* app.xml
* archetype-metadata.xml
* generate*.bat - in admin
* archetype.properties

Also, need to edit the XML schema for app.xml
* isaac-app/src/main/resources/xsd/AppConfigSchema.xsd
* Also see IsaacAppConfigI.java