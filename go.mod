module github.com/edgexfoundry/device-modbus-go

go 1.15

require (
	github.com/edgexfoundry/device-sdk-go v1.1.1
	github.com/edgexfoundry/go-mod-core-contracts v0.1.31
	github.com/goburrow/modbus v0.1.0
	github.com/goburrow/serial v0.1.0
	github.com/google/uuid v1.1.1 // indirect
	github.com/gorilla/mux v1.7.0 // indirect
	github.com/hashicorp/go-sockaddr v1.0.1 // indirect
	github.com/hashicorp/golang-lru v0.5.1 // indirect
	github.com/miekg/dns v1.1.4 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/tbrandon/mbserver v0.0.0-20170611213546-993e1772cc62
)

replace (
	golang.org/x/crypto => github.com/golang/crypto v0.0.0-20201117144127-c1f2f97bffc9
	golang.org/x/mod => github.com/golang/mod v0.3.0
	golang.org/x/net => github.com/golang/net v0.0.0-20201110031124-69a78807bb2b
	golang.org/x/sync => github.com/golang/sync v0.0.0-20201020160332-67f06af15bc9
	golang.org/x/sys => github.com/golang/sys v0.0.0-20201119102817-f84b799fce68
	golang.org/x/term => github.com/golang/term v0.0.0-20201117132131-f5c789dd3221
	golang.org/x/text => github.com/golang/text v0.3.4
	golang.org/x/tools => github.com/golang/tools v0.0.0-20201124005743-911501bfb504
	golang.org/x/xerrors => github.com/golang/xerrors v0.0.0-20200804184101-5ec99f83aff1
)
