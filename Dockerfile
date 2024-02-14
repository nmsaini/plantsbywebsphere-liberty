FROM icr.io/appcafe/websphere-liberty:23.0.0.12-kernel-java17-openj9-ubi
COPY --chown=1001:0 config/server.xml /config/
RUN features.sh

COPY --chown=1001:0 app/*.ear /config/apps
RUN configure.sh
USER 1001

EXPOSE 9080 9443
