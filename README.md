ISAAC-Archetypes
================

Top level project for archetype projects.  Sub-modules of this project will comprise
the complete set of archetype projects for ISAAC.

# Generating the archetype from the ISAAC-PA project

* Clone the ISAAC-PA project in a non-eclipse controlled directory 
  (to avoid .prefs, .settings, etc.)
* Run "mvn archetype:create-from-project" in the ISAAC-PA project itself
* Prepare archetype project
  * Zip the resulting archetype build
  * Unzip the zip file into a IHTSDO-Archetypes/pa-archetype project
    * Revert the top-level pom.xml file
    * Revert the archetype.properties file (src/main/test/projects/basic)
  * Remove any files that should be removed, and add any new files
  * Review all changes for correctness and completeness
* The variables in the poms that are to be interpolated at archetype
  generation time should be escaped with \$ 
  (see \${groupId} in src/main/resources/archetype-resources/pom.xml)

# Generating an ISAAC-PA project from an archetype

Use the ISAAC-Archetypes/admin/src/main/resources/bin/generate*{sh,bat} scripts


# Best practices for archetype maintenance

* Develop changes in the ISAAC-PA project itself
* Regenerate the archetype and recover properties settings from before
* Add new properties (as needed), also to the generator scripts
* Handle add/removed files
* Review and commit changes
* Regenerate ISAAC-PA project from the archetype
* Verify that it exactly matches (if not, reconfigure properties as needed)
* Regenerate other ISAAC-PA projects as needed

