@echo off
::
:: Generate PA Archetype Template Script
:: Edit the variables below and run the script
::
:: NOTE: the archetype project must be built locally
:: NOTE: the "mvn" command must be in the path
::

:: Artifact to generate project for
set groupId= ... group id of the project to generate ...
set artifactId= ... artifact id of the project to generate ...
set version=  ... version of the project to generate ...

:: Archetype version info
set archetypeGroupId=gov.va.isaac.archetypes
set archetypeArtifactId=isaac-archetypes-pa
set archetypeVersion=1.0-Sprint_15-SNAPSHOT

:: ISAAC software version
set isaacVersion=1.0-Sprint_15-SNAPSHOT

:: Repositories for code and artifacts
set scmConnection=scm:git:git@github.com:Apelon-VA/ISAAC-PA-VHA.git
set scmUrl=https://github.com/Apelon-VA/ISAAC-PA-VHA
set distReposId=maestro-deploy
set distReposName=VA Public Releases Repository
set distReposUrl=http://va-archiva-host:8082/archiva/repository/va-releases/
set distReposSnapId=maestro-deploy
set distReposSnapName=VA Public Snapshots Repository
set distReposSnapUrl=http://va-archiva-host:8082/archiva/repository/va-snapshots/

:: Database version info
set dbGroupId=gov.va.isaac.db
set dbArtifactId=solor-all
set dbVersion=2014.10.13
set dbClassifier=active-only

:: Users version info - PLACEHOLDER
:: set usersGroupId=gov.va.isaac.users
:: set usersArtifactId=vha-users
:: set usersVersion=0.0.1-SNAPSHOT

:: Drools version info - PLACEHOLDER
:: set droolsGroupId=gov.va.isaac.drools
:: set droolsArtifactId=qaRules
:: set droolsVersion=0.0.1-SNAPSHOT
:: set droolsUrl=http://mgr.servers.aceworkspace.net:50002/drools-guvnor/org.drools.guvnor.Guvnor/package/varelease/varelease

:: Application properties
set appTitle=VHA ISAAC App - ISAAC Toolkit (v0.15)
set previousReleaseVersion=20140731
set releaseVersion=20150131
set extensionNamespace=1000161
set changeSetUrl=https://csfe.aceworkspace.net/svn/repos/vhachangesets
set appSchemaLocation=https://raw.githubusercontent.com/Apelon-VA/ISAAC/master/isaac-app/src/main/resources/xsd/AppConfigSchema.xsd
set userSchemaLocation=https://raw.githubusercontent.com/Apelon-VA/ISAAC/master/otf-util/src/main/resources/xsd/UserGenerationSchema.xsd
set workflowServerUrl=http://162.243.255.43:8080/kie-wb/
set workflowServerDeploymentId=gov.va.isaac.demo:terminology-authoring:1.4
 
:: Path Information
::  NOTE: these paths must exist in the corresponding database
set defaultEditPathName=ISAAC development path
set defaultEditPathUuid=f5c0a264-15af-5b94-a964-bb912ea5634f
set defaultViewPathName=ISAAC development path
set defaultViewPathUuid=f5c0a264-15af-5b94-a964-bb912ea5634f
set workflowPromotionPathName=ISAAC release path
set workflowPromotionPathUuid=f5c0a264-15af-5b94-a964-bb912ea5634f

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
echo   dbGroupId = %dbGroupId%
echo   dbArtifactId = %dbArtifactId%
echo   dbVersion = %dbVersion%
echo   dbClassifier = %dbClassifier%
echo   usersGroupId = %usersGroupId%
echo   usersArtifactId = %usersArtifactId%
echo   usersVersion = %usersVersion%
echo   droolsGroupId = %droolsGroupId%
echo   droolsArtifactId = %droolsArtifactId%
echo   droolsVersion = %droolsVersion%
echo   droolsUrl = %droolsUrl%
echo   appTitle = %appTitle%
echo   previousReleaseVersion = %previousReleaseVersion%
echo   releaseVersion = %releaseVersion%
echo   extensionNamespace = %extensionNamespace%
echo   changeSetUrl = %changeSetUrl%
echo   defaultEditPathName = %defaultEditPathName%
echo   defaultEditPathUuid = %defaultEditPathUuid%
echo   defaultViewPathName = %defaultViewPathName%
echo   defaultViewPathUuid = %defaultViewPathUuid%
echo   userSchemaLocation = %userSchemaLocation%
echo   workflowServerUrl = %workflowServerUrl%
echo   workflowServerDeploymentId = %workflowServerDeploymentId%
echo   workflowPromotionPathName = %workflowPromotionPathName%
echo   workflowPromotionPathUuid = %workflowPromotionPathUuid%
echo   .

:: Generate project
echo   Generate project
mvn archetype:generate -B^
 "-DgroupId=%groupId%"^
 "-DartifactId=%artifactId%"^
 "-Dversion=%version%"^
 "-DarchetypeGroupId=%archetypeGroupId%"^
 "-DarchetypeArtifactId=%archetypeArtifactId%"^
 "-DarchetypeVersion=%archetypeVersion%"^
 "-DisaacVersion=%isaacVersion%"^
 "-DscmConnection=%scmConnection%"^
 "-DscmUrl=%scmUrl%"^
 "-DdistReposId=%distReposId%"^
 "-DdistReposName=%distReposName%"^
 "-DdistReposUrl=%distReposUrl%"^
 "-DdistReposSnapId=%distReposSnapId%"^
 "-DdistReposSnapName=%distReposSnapName%"^
 "-DdistReposSnapUrl=%distReposSnapUrl%"^
 "-DdbGroupId=%dbGroupId%"^
 "-DdbArtifactId=%dbArtifactId%"^
 "-DdbVersion=%dbVersion%"^
 "-DdbClassifier=%dbClassifier%"^
 "-DusersGroupId = %usersGroupId%"^
 "-DusersArtifactId = %usersArtifactId%"^
 "-DusersVersion = %usersVersion%"^
 "-DdroolsGroupId = %droolsGroupId%"^
 "-DdroolsArtifactId = %droolsArtifactId%"^
 "-DdroolsVersion = %droolsVersion%"^
 "-DdroolsUrl = %droolsUrl%"^
 "-DappTitle=%appTitle%"^
 "-DpreviousReleaseVersion=%previousReleaseVersion%"^
 "-DreleaseVersion=%releaseVersion%"^
 "-DextensionNamespace=%extensionNamespace%"^
 "-DchangeSetUrl=%changeSetUrl%"^
 "-DdefaultEditPathName=%defaultEditPathName%"^
 "-DdefaultEditPathUuid=%defaultEditPathUuid%"^
 "-DdefaultViewPathName=%defaultViewPathName%"^
 "-DdefaultViewPathUuid=%defaultViewPathUuid%"^
 "-DuserSchemaLocation=%userSchemaLocation%"^
 "-DworkflowServerUrl=%workflowServerUrl%"^
 "-DworkflowServerDeploymentId=%workflowServerDeploymentId%"^
 "-DworkflowPromotionPathName=%workflowPromotionPathName%"^
 "-DworkflowPromotionPathUuid=%workflowPromotionPathUuid%"

echo ----------------------------------------
echo Finished ...
echo ----------------------------------------
pause
