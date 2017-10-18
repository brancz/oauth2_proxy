REPO?=quay.io/coreos/tectonic-monitoring-auth
TAG?=$(shell git rev-parse --short HEAD)

build:
	CGO_ENABLED=0 go build -i --installsuffix cgo --ldflags="-s" -o oauth2_proxy

docker: build
	docker build -t $(REPO):$(TAG) .
