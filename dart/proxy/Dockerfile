FROM envoyproxy/envoy:v1.20.0
COPY ./envoy-local.yaml /etc/envoy.yaml
CMD /usr/local/bin/envoy -c /etc/envoy.yaml