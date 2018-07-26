ARG FROM_BASE=${DOCKER_REGISTRY:-}openjdk:${CONTAINER_TAG:-latest}
FROM $FROM_BASE

# name and version of this docker image
ARG CONTAINER_NAME=kafkamgr
# Specify CBF version to use with our configuration and customizations
ARG CBF_VERSION="${CBF_VERSION}"

# include our project files
COPY build Dockerfile /tmp/

# set to non zero for the framework to show verbose action scripts
#    (0:default, 1:trace & do not cleanup; 2:continue after errors)
ENV DEBUG_TRACE=0


ARG KM_ARGS="-Djava.net.preferIPv4Stack=true"
ARG KM_CONTEXT=/

# kafka.manager version being bundled in this docker image
ARG KM_VERSION=${KM_VERSION:-1.3.3.18}
LABEL kafka.manager.version=$KM_VERSION


# build content
RUN set -o verbose \
    && chmod u+rwx /tmp/build.sh \
    && /tmp/build.sh "$CONTAINER_NAME" "$DEBUG_TRACE"
RUN [ $DEBUG_TRACE != 0 ] || rm -rf /tmp/* 


WORKDIR /usr/local/kafka-manager
EXPOSE 9000

ENTRYPOINT [ "docker-entrypoint.sh" ]
#CMD ["$CONTAINER_NAME"]
CMD ["kafkamgr"]
