# fine jars
call mvn install:install-file -Dfile=../lib/fine-accumulator-10.0.jar -DgroupId=com.fr -DartifactId=accumulator -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-activator-10.0.jar -DgroupId=com.fr -DartifactId=activator -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-core-10.0.jar -DgroupId=com.fr -DartifactId=core -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-datasource-10.0.jar -DgroupId=com.fr -DartifactId=datasource -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-decision-10.0.jar -DgroupId=com.fr -DartifactId=decision -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-decision-report-10.0.jar -DgroupId=com.fr -DartifactId=decision-report -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-report-engine-10.0.jar -DgroupId=com.fr -DartifactId=report-engine -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-schedule-10.0.jar -DgroupId=com.fr -DartifactId=schedule -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-schedule-report-10.0.jar -DgroupId=com.fr -DartifactId=schedule-report -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-swift-log-adaptor-10.0.jar -DgroupId=com.fr -DartifactId=swift-log-adaptor -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-third-10.0.jar -DgroupId=com.fr -DartifactId=third -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-third-v2-10.0.jar -DgroupId=com.fr -DartifactId=third-v2 -Dversion=10.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/fine-webui-10.0.jar -DgroupId=com.fr -DartifactId=webui -Dversion=10.0 -Dpackaging=jar
# other jars
call mvn install:install-file -Dfile=../lib/ifxjdbc.jar -DgroupId=ifxjdbc -DartifactId=ifxjdbc -Dversion=1.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/JavaPNS_2.2.jar -DgroupId=javapns -DartifactId=javapns -Dversion=2.2 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/jtds-1.2.2.jar -DgroupId=jtds -DartifactId=jtds -Dversion=1.2.2 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/jzlib-1.1.3.jar -DgroupId=jzlib -DartifactId=jzlib -Dversion=1.1.3 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/mysql-connector-java-5.1.39-bin.jar -DgroupId=mysql -DartifactId=mysql -Dversion=5.1.39 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/netty-all-4.1.17.Final.jar -DgroupId=netty -DartifactId=netty -Dversion=4.1.17.Final -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/ojdbc14.jar -DgroupId=ojdbc -DartifactId=ojdbc -Dversion=14.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/sqlite-jdbc.jar -DgroupId=sqlite -DartifactId=sqlite -Dversion=1.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/sqljdbc.jar -DgroupId=sqljdbc -DartifactId=sqljdbc -Dversion=1.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/sybase.jar -DgroupId=sybase -DartifactId=sybase -Dversion=1.0 -Dpackaging=jar
call mvn install:install-file -Dfile=../lib/visualvm-2.3.jar -DgroupId=visualvm -DartifactId=visualvm -Dversion=2.3 -Dpackaging=jar
# tools.jar
call mvn install:install-file -Dfile=../lib/tools.jar -DgroupId=tools -DartifactId=tools -Dversion=1.0 -Dpackaging=jar