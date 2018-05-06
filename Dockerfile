FROM alpine:3.7 
RUN sed -i -e 's/v[[:digit:]]\.[[:digit:]]/edge/g' /etc/apk/repositories && apk add --upgrade apk-tools &&\
    apk upgrade --update-cache --available && apk --update add nodejs=8.11.1-r2 nodejs-npm=8.11.1-r2 yarn=1.6.0-r0 openjdk8=8.161.12-r0 && \
    mkdir -p /opt/gradle && cd /opt/gradle && wget https://downloads.gradle.org/distributions/gradle-4.5-bin.zip && unzip gradle-4.5-bin.zip
ENV PATH='$PATH:/opt/gradle/gradle-4.5/bin'
CMD ["/bin/sh"]
