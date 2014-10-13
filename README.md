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

* Use the ISAAC-Archetypes/admin/src/main/resources/bin/generate*{sh,bat} scripts
  * Configure the script as necessary and determine whether changes should be kept in repository
* The template.bat script is for future use by other projects

# Best practices for archetype maintenance

* Develop changes in the ISAAC-PA project itself
* Regenerate the archetype and recover properties settings from before
* Add new properties (as needed), also to the generator scripts
* Handle add/removed files
* Review and commit changes
* Regenerate ISAAC-PA project from the archetype
* Verify that it exactly matches (if not, reconfigure properties as needed)
* Regenerate other ISAAC-PA projects as needed

# Acceptance Test

* Clone the ISAAC-Archetypes project
* Build the ISAAC-Archteypes project (mvn clean install)
* Unpack admin/target/isaac-archetypes-admin*zip file into a folder
* Edit the bin/generateVha.bat script as desired
* Run the bin/generateVha.bat script
** This produces the isaac-pa-parent project
* Run this project (with the -Pinstaller profile)
** Note: for the installer profile to work, you must reference a database
   that is available through archiva or one that you have built locally. 
** Otherwise do not use -Pinstaller and instead just install your own
   berkeley-db folder into the unpacked distribution
* Unpack app/target/isaac-pa-app*zip into a folder 
* Launch ISAAC
