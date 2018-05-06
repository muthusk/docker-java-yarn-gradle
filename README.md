# docker-java-yarn-gradle
Uses Alpine 3.7 + Edge Docker Container

Installs OpenJDK 8.161.12

Installs NodeJS + NodeJS-npm ( 8.11.1-r2 ) and yarn 1.6.0

Downloads and unzips Gradle to /opt/gradle
If gradle wrapper is used, replace remote URL with local file before starting gradelw command - like shown below 

 sed -i  "s|https\\\\://services.gradle.org/distributions/gradle-4.5-bin.zip|file\\\\:///opt/gradle/gradle-4.5-bin.zip|g" ./gradle/wrapper/gradle-wrapper.properties

Gradle is also unziped and set in path to directly use gradle from commandline

This is primarily used on Gitlab CI Build. 
