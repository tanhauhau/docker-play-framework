FROM lwieske/java-8

ENV ACTIVATOR_VERSION 1.3.10

RUN apk add --update curl unzip bash && rm -rf /var/cache/apk/*
RUN curl -O https://downloads.typesafe.com/typesafe-activator/${ACTIVATOR_VERSION}/typesafe-activator-${ACTIVATOR_VERSION}.zip
RUN unzip typesafe-activator-${ACTIVATOR_VERSION}.zip -d / && rm typesafe-activator-${ACTIVATOR_VERSION}.zip && chmod a+x /activator-dist-${ACTIVATOR_VERSION}/bin/activator
ENV PATH $PATH:/activator-dist-1.3.10/bin

RUN mkdir /app
WORKDIR /app

EXPOSE 9000

# ENTRYPOINT ["activator", "-Dhttp.address=0.0.0.0"]

# CMD ["activator", "run"]
