@echo off
::
:: Generate PA Archetype Template Script
:: Edit the variables below and run the script
::
:: NOTE: the archetype project must be built locally
:: NOTE: the "mvn" command must be in the path
::

:: Artifact to generate project for
set groupId=gov.va.isaac.isaac-pa.vha
set artifactId=isaac-pa-parent
set version=1.0-Sprint_13-SNAPSHOT

:: Project Configuration settings
set archetypeGroupId=gov.va.isaac.isaac.archetypes
set archetypeArtifactId=isaac-archetypes-pa
set archetypeVersion=1.0-Sprint_13-SNAPSHOT
set isaacVersion=1.0-Sprint_13-SNAPSHOT
set scmConnection=scm:git:git@github.com:Apelon-VA/ISAAC-PA.git
set scmUrl=https://github.com/Apelon-VA/ISAAC-PA
set distReposId=maestro-deploy
set distReposName=VA Public Releases Repository
set distReposUrl=http://va-archiva-host:8082/archiva/repository/va-releases/
set distReposSnapId=maestro-deploy
set distReposSnapName=VA Public Snapshots Repository
set distReposSnapUrl=http://va-archiva-host:8082/archiva/repository/va-snapshots/
:: anticipating the future
:: set usersGroupId=gov.va.isaac...
:: set usersArtifactId=
:: set usersVersion=
:: set droolsGroupId=gov.va.isaac...
:: set droolsArtifactId=
:: set droolsVersion=

:: Application configuration settings
set appTitle=VHA ISAAC App - ISAAC Toolkit (v0.13)
set dbGroupId=gov.va.isaac.db
set dbArtifactId=solor-snomed-loinc
set dbVersion=2014.08.19
set dbClassifier=bdb


echo ----------------------------------------
echo Starting ...
echo ----------------------------------------
echo   groupId = %groupId%
echo   artifactId = %artifactId%
echo   version = %version%
echo   archetypeGroupId = %archetypeGroupId%
echo   archetypeArtifactId = %archetypeArtifactId%
echo   archetypeVersion = %archetypeVersion%
echo   isaacVersion = %isaacVersion%
echo   scmConnection = %scmConnection%
echo   scmUrl = %scmUrl%
echo   distReposId = %distReposId%
echo   distReposName = %distReposName%
echo   distReposUrl = %distReposUrl%
echo   distReposSnapId = %distReposSnapId%
echo   distReposSnapName = %distReposSnapName%
echo   distReposSnapUrl = %distReposSnapUrl%
:: echo usersGroupId = %usersGroupId%
:: echo usersArtifactId = %usersArtifactId%
:: echo usersVersion = %usersVersion%
:: echo droolsGroupId = %droolsGroupId%
:: echo droolsArtifactId = %droolsArtifactId%
:: echo droolsVersion = %droolsVersion%
echo   appTitle = %appTitle%
echo   dbGroupId = %dbGroupId%
echo   dbArtifactId = %dbArtifactId%
echo   dbVersion = %dbVersion%
echo   dbClassifier = %dbClassifier%
echo   .

:: Generate project
echo   Generate project
mvn archetype:generate -B^
 -DgroupId=%groupId%^
 -DartifactId=%artifactId%^
 -Dversion=%version%^
 -DarchetypeGroupId=%archetypeGroupId%^
 -DarchetypeArtifactId=%archetypeArtifactId%^
 -DarchetypeVersion=%archetypeVersion%^
 -DisaacVersion=%isaacVersion%^
 -DscmConnection=%scmConnection%^
 -DscmUrl=%scmUrl%^
 -DdistReposId=%distReposId%^
 "-DdistReposName=%distReposName%"^
 -DdistReposUrl=%distReposUrl%^
 -DdistReposSnapId=%distReposSnapId%^
 "-DdistReposSnapName=%distReposSnapName%"^
 -DdistReposSnapUrl=%distReposSnapUrl%^
 "-DappTitle=%appTitle%"^
 -DdbGroupId=%dbGroupId%^
 -DdbArtifactId=%dbArtifactId%^
 -DdbVersion=%dbVersion%^
 -DdbClassifier=%dbClassifier%
 
:: -DusersGroupId = %usersGroupId%^
:: -DusersArtifactId = %usersArtifactId%^
:: -DusersVersion = %usersVersion%^
:: -DdroolsGroupId = %droolsGroupId%^
:: -DdroolsArtifactId = %droolsArtifactId%^
:: -DdroolsVersion = %droolsVersion%^

echo ----------------------------------------
echo Finished ...
echo ----------------------------------------
pause
