#!/bin/sh

#Install downloaded transaction jar first

mvn install:install-file -Dfile=transaction-api-1.1.jar -DgroupId=javax.transaction -DartifactId=transaction-api -Dversion=1.1 -DgeneratePom=true -Dpackaging=jar 

export GAE_HOME="/usr/share/java/appengine-java-sdk-1.3.0"
export GAE_VERSION=1.3.0
export GAE_DN_VER=1.0.4.1.final
export JDO_VER=2.3-eb
export DN_VER=1.1.5
export DN_ENH_VER=1.1.4

# APPENGINE TOOLS AND CORE

mvn install:install-file -Dfile=$GAE_HOME/lib/appengine-tools-api.jar -DgroupId=com.google.appengine -DartifactId=appengine-tools -Dversion=$GAE_VERSION -DgeneratePom=true -Dpackaging=jar
mvn install:install-file -Dfile=$GAE_HOME/lib/user/appengine-api-1.0-sdk-$GAE_VERSION.jar -DgroupId=com.google.appengine -DartifactId=appengine-api-1.0-sdk -Dversion=$GAE_VERSION -DgeneratePom=true -Dpackaging=jar
mvn install:install-file -Dfile=$GAE_HOME/lib/user/appengine-api-labs-$GAE_VERSION.jar -DgroupId=com.google.appengine -DartifactId=appengine-api-labs -Dversion=$GAE_VERSION -DgeneratePom=true -Dpackaging=jar
mvn install:install-file -Dfile=$GAE_HOME/lib/shared/appengine-local-runtime-shared.jar -DgroupId=com.google.appengine -DartifactId=appengine-local-runtime-shared -Dversion=$GAE_VERSION -DgeneratePom=true -Dpackaging=jar

# DATANUCLEUS 
 
mvn install:install-file -Dfile=$GAE_HOME/lib/user/orm/datanucleus-appengine-$GAE_DN_VER.jar -DgroupId=org.datanucleus -DartifactId=datanucleus-appengine -Dversion=$GAE_DN_VER -DgeneratePom=true -Dpackaging=jar
mvn install:install-file -Dfile=$GAE_HOME/lib/user/orm/datanucleus-core-$DN_VER.jar -DgroupId=org.datanucleus -DartifactId=datanucleus-core -Dversion=$DN_VER -DgeneratePom=true -Dpackaging=jar
mvn install:install-file -Dfile=$GAE_HOME/lib/user/orm/datanucleus-jpa-$DN_VER.jar -DgroupId=org.datanucleus -DartifactId=datanucleus-jpa -Dversion=$DN_VER -DgeneratePom=true -Dpackaging=jar
mvn install:install-file -Dfile=$GAE_HOME/lib/user/orm/jdo2-api-$JDO_VER.jar -DgroupId=javax.jdo -DartifactId=jdo2-api -Dversion=$JDO_VER -DgeneratePom=true -Dpackaging=jar
mvn install:install-file -Dfile=$GAE_HOME/lib/tools/orm/datanucleus-enhancer-$DN_ENH_VER.jar -DgroupId=org.datanucleus -DartifactId=datanucleus-enhancer -Dversion=$DN_ENH_VER -DgeneratePom=true -Dpackaging=jar
