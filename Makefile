.PHONY: build test clean prepare update docker

GO=CGO_ENABLED=0 GO111MODULE=on go

MICROSERVICES=cmd/device-modbus

.PHONY: $(MICROSERVICES)

DOCKERS=docker_device_modbus_go
.PHONY: $(DOCKERS)

VERSION=$(shell cat ./VERSION)
GIT_SHA=$(shell git rev-parse HEAD)
GOFLAGS=-ldflags "-X github.com/edgexfoundry/device-modbus-go.Version=$(VERSION)"

build: $(MICROSERVICES)
	$(GO) build ./...

cmd/device-modbus:
	$(GO) build -mod=vendor $(GOFLAGS) -o $@ ./cmd

test:
	$(GO) test ./... -coverprofile=coverage.out
	$(GO) vet ./...
	gofmt -l .
	[ "`gofmt -l .`" = "" ]
	./bin/test-attribution-txt.sh
	./bin/test-go-mod-tidy.sh

clean:
	rm -f $(MICROSERVICES)

docker: $(DOCKERS)

docker_device_modbus_go:
	docker build \
		--label "git_sha=$(GIT_SHA)" \
		-t guyuan/docker-device-modbus-go:$(VERSION) \
		.
