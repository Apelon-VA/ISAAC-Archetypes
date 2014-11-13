#!/bin/sh

#  Generate PA Archetype Template Script
#  Edit the variables below and run the script
# 
#  NOTE: the archetype project must be built locally
#  NOTE: the "mvn" command must be in the path
#  NOTE maven archetypes are completely broken if you have your local .m2 folder installed anywhere other than default
#  http://jira.codehaus.org/browse/ARCHETYPE-283 - you CANNOT <localRepository>D:\differentrepo</localRepository>
#  in your maven settings.xml file if you intend to use an archetype.
# 

#  Artifact to generate project for
groupId=... group id of the project to generate ...
artifactId=... artifact id of the project to generate ...
version=... version of the project to generate ...

#  Archetype version info
archetypeGroupId=gov.va.isaac.archetypes
archetypeArtifactId=isaac-archetypes-pa
archetypeVersion=1.0-Sprint_15-SNAPSHOT

#  ISAAC software version
isaacVersion=1.0-Sprint_15-SNAPSHOT

#  Install4j executable
install4JExecutable=/path/to/install4jc.exe

#  Repositories for code and artifacts
scmConnection=scm:git:git@github.com:Apelon-VA/ISAAC-PA-VHA.git
scmUrl=https://github.com/Apelon-VA/ISAAC-PA-VHA

#  Database version info
dbGroupId=gov.va.isaac.db
dbArtifactId=solor-all
dbVersion=2014.11.12
dbClassifier=active-only
dbType=bdb.zip

#  Drools version info - PLACEHOLDER
#  droolsGroupId=gov.va.isaac.drools
#  droolsArtifactId=qaRules
#  droolsVersion=0.0.1-SNAPSHOT
#  droolsUrl=http://mgr.servers.aceworkspace.net:50002/drools-guvnor/org.drools.guvnor.Guvnor/package/varelease/varelease

#  Application properties
appTitle=VHA ISAAC App - ISAAC Toolkit (v0.15)
previousReleaseVersion=20140731
releaseVersion=20150131
extensionNamespace=1000161
moduleId=sampleModuleId
changeSetUrl=ssh://someuser@csfe.aceworkspace.net:29418/isaac_pa_demo_changesets
changeSetUrlType=GIT
appSchemaLocation=https://raw.githubusercontent.com/Apelon-VA/ISAAC/master/isaac-app/src/main/resources/xsd/AppConfigSchema.xsd
userSchemaLocation=https://raw.githubusercontent.com/Apelon-VA/ISAAC/master/otf-util/src/main/resources/xsd/UserGenerationSchema.xsd
workflowServerUrl=http://162.243.255.43:8080/kie-wb/
workflowServerDeploymentId=gov.va.isaac.demo:terminology-authoring:1.5
 
#  Path Information
#   NOTE: these paths must exist in the corresponding database
defaultEditPathName=ISAAC development path
defaultEditPathUuid=f5c0a264-15af-5b94-a964-bb912ea5634f
defaultViewPathName=ISAAC development path
defaultViewPathUuid=f5c0a264-15af-5b94-a964-bb912ea5634f
workflowPromotionPathName=ISAAC release path
workflowPromotionPathUuid=c73859bc-4887-5273-8f57-c9b2557d5ac2

echo "----------------------------------------"
echo "Starting ..."
echo "----------------------------------------"
echo "  groupId = $groupId"
echo "  artifactId = $artifactId"
echo "  version = $version"
echo "  archetypeGroupId = $archetypeGroupId"
echo "  archetypeArtifactId = $archetypeArtifactId"
echo "  archetypeVersion = $archetypeVersion"
echo "  isaacVersion = $isaacVersion"
echo "  install4JExecutable = $install4JExecutable"
echo "  scmConnection = $scmConnection"
echo "  scmUrl = $scmUrl"
echo "  dbGroupId = $dbGroupId"
echo "  dbArtifactId = $dbArtifactId"
echo "  dbVersion = $dbVersion"
echo "  dbClassifier = $dbClassifier"
echo "  dbType = $dbType"
#echo "  droolsGroupId = $droolsGroupId"
#echo "  droolsArtifactId = $droolsArtifactId"
#echo "  droolsVersion = $droolsVersion"
#echo "  droolsUrl = $droolsUrl"
echo "  appTitle = $appTitle"
echo "  previousReleaseVersion = $previousReleaseVersion"
echo "  releaseVersion = $releaseVersion"
echo "  extensionNamespace = $extensionNamespace"
echo "  moduleId = $moduleId"
echo "  changeSetUrl = $changeSetUrl"
echo "  changeSetUrlType = $changeSetUrlType"
echo "  defaultEditPathName = $defaultEditPathName"
echo "  defaultEditPathUuid = $defaultEditPathUuid"
echo "  defaultViewPathName = $defaultViewPathName"
echo "  defaultViewPathUuid = $defaultViewPathUuid"
echo "  userSchemaLocation = $userSchemaLocation"
echo "  workflowServerUrl = $workflowServerUrl"
echo "  workflowServerDeploymentId = $workflowServerDeploymentId"
echo "  workflowPromotionPathName = $workflowPromotionPathName"
echo "  workflowPromotionPathUuid = $workflowPromotionPathUuid"
echo "  "

#  Generate project - assumes "mvn" is in the path
echo "  Generate project"
mvn archetype:generate -B \
 "-DgroupId=$groupId" \
 "-DartifactId=$artifactId" \
 "-Dversion=$version" \
 "-DarchetypeGroupId=$archetypeGroupId" \
 "-DarchetypeArtifactId=$archetypeArtifactId" \
 "-DarchetypeVersion=$archetypeVersion" \
 "-DisaacVersion=$isaacVersion" \
 "-Dinstall4JExecutable=$install4JExecutable" \
 "-DscmConnection=$scmConnection" \
 "-DscmUrl=$scmUrl" \
 "-DdbGroupId=$dbGroupId" \
 "-DdbArtifactId=$dbArtifactId" \
 "-DdbVersion=$dbVersion" \
 "-DdbClassifier=$dbClassifier" \
 "-DdbType=$dbType" \
 "-DappTitle=$appTitle" \
 "-DpreviousReleaseVersion=$previousReleaseVersion" \
 "-DreleaseVersion=$releaseVersion" \
 "-DextensionNamespace=$extensionNamespace" \
 "-DmoduleId=$moduleId" \
 "-DchangeSetUrl=$changeSetUrl" \
 "-DchangeSetUrlType=$changeSetUrlType" \
 "-DdefaultEditPathName=$defaultEditPathName" \
 "-DdefaultEditPathUuid=$defaultEditPathUuid" \
 "-DdefaultViewPathName=$defaultViewPathName" \
 "-DdefaultViewPathUuid=$defaultViewPathUuid" \
 "-DuserSchemaLocation=$userSchemaLocation" \
 "-DworkflowServerUrl=$workflowServerUrl" \
 "-DworkflowServerDeploymentId=$workflowServerDeploymentId" \
 "-DworkflowPromotionPathName=$workflowPromotionPathName" \
 "-DworkflowPromotionPathUuid=$workflowPromotionPathUuid"

# "-DdroolsGroupId = $droolsGroupId" \
# "-DdroolsArtifactId = $droolsArtifactId" \
# "-DdroolsVersion = $droolsVersion" \
# "-DdroolsUrl = $droolsUrl" \

echo "----------------------------------------"
echo "Finished ..."
echo "----------------------------------------"

