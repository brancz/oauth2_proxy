FROM quay.io/prometheus/busybox:latest

ADD oauth2_proxy /bin/oauth2_proxy

ENTRYPOINT ["/bin/oauth2_proxy"]
