# Executes Gradle's build task which compiles the Groovy classes into Java
# Classes
gradle-build:
	gradle build

# This tells Gradle to run our classes to test their execution. Its not really
# a test, but a way to run and see your results without running tests. Still,
# you should write tests and run those as well.
gradle-run:
	gradle run

# This target is how you manually run groovyc and then run the classes with
# Java. This method requires that the groovy-all JAR be in the ClassPath so that
# Java knows how to execute the class. Even though its a Java class, it still
# needs those JARs. Just like how Jython and JRuby work.
#
# For example, my ${GROOVY_ALL_JAR} looks like this:
# export GROOVY_ALL_JAR=/Users/pd028300/.gradle/caches/modules-2/files-2.1/org.codehaus.groovy/groovy-all/2.4.15/423a17aeb2f64bc6f76e8e44265a548bec80fd42/groovy-all-2.4.15.jar
groovy-compile:
	cd src/main/groovy; groovyc org/phil/Main.groovy; java -cp .:${GROOVY_ALL_JAR} org.phil.Main
