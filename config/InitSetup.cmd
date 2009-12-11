@echo off

REM Install downloaded transaction jar first

call mvn install:install-file -Dfile=transaction-api-1.1.jar -DgroupId=javax.transaction -DartifactId=transaction-api -Dversion=1.1 -DgeneratePom=true -Dpackaging=jar 

set GAE_HOME="C:\Java\appengine-java-sdk-1.2.8"

REM APPENGINE TOOLS AND CORE

call mvn install:install-file -Dfile=%GAE_HOME%/lib/appengine-tools-api.jar -DgroupId=com.google.appengine -DartifactId=appengine-tools -Dversion=1.2.8 -DgeneratePom=true -Dpackaging=jar
call mvn install:install-file -Dfile=%GAE_HOME%/lib/user/appengine-api-1.0-sdk-1.2.8.jar -DgroupId=com.google.appengine -DartifactId=appengine-api-1.0-sdk -Dversion=1.2.8 -DgeneratePom=true -Dpackaging=jar
call mvn install:install-file -Dfile=%GAE_HOME%/lib/user/appengine-api-labs-1.2.8.jar -DgroupId=com.google.appengine -DartifactId=appengine-api-labs -Dversion=1.2.8 -DgeneratePom=true -Dpackaging=jar
call mvn install:install-file -Dfile=%GAE_HOME%/lib/shared/appengine-local-runtime-shared.jar -DgroupId=com.google.appengine -DartifactId=appengine-local-runtime-shared -Dversion=1.2.8 -DgeneratePom=true -Dpackaging=jar

REM DATANUCLEUS 
 
call mvn install:install-file -Dfile=%GAE_HOME%/lib/user/orm/datanucleus-appengine-1.0.4.final.jar -DgroupId=org.datanucleus -DartifactId=datanucleus-appengine -Dversion=1.0.4.final -DgeneratePom=true -Dpackaging=jar
call mvn install:install-file -Dfile=%GAE_HOME%/lib/user/orm/datanucleus-core-1.1.5.jar -DgroupId=org.datanucleus -DartifactId=datanucleus-core -Dversion=1.1.5 -DgeneratePom=true -Dpackaging=jar
call mvn install:install-file -Dfile=%GAE_HOME%/lib/user/orm/datanucleus-jpa-1.1.5.jar -DgroupId=org.datanucleus -DartifactId=datanucleus-jpa -Dversion=1.1.5 -DgeneratePom=true -Dpackaging=jar
call mvn install:install-file -Dfile=%GAE_HOME%/lib/user/orm/jdo2-api-2.3-eb.jar -DgroupId=javax.jdo -DartifactId=jdo2-api -Dversion=2.3-eb -DgeneratePom=true -Dpackaging=jar
call mvn install:install-file -Dfile=%GAE_HOME%/lib/tools/orm/datanucleus-enhancer-1.1.4.jar -DgroupId=org.datanucleus -DartifactId=datanucleus-enhancer -Dversion=1.1.4 -DgeneratePom=true -Dpackaging=jar
