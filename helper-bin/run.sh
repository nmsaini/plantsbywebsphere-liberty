#!/bin/bash
podman run -d \
	-v /root/projects/cp4i/mq/temp-certs/miqm.crt:/var/run/secrets/kubernetes.io/serviceaccount/miqm.crt \
	-v /root/projects/cp4i/mq/temp-certs/nha2.crt:/var/run/secrets/kubernetes.io/serviceaccount/nha2.crt \
	-e SEC_IMPORT_K8S_CERTS=true \
	--name plantsbywebsphere plants-sample

sleep 1
podman logs -f plantsbywebsphere
