# follow me on github .CybruGhost .All Rights Reserved.

VERSION = 1.0.0
PACKAGE = ./cmdStock-market

run:
	go run ./cmdStock-market/main.go

build:
	go build -x -o ./binStock-market $(PACKAGE)

install:
	go install -x $(PACKAGE)

buildall:
	GOOS=darwin  GOARCH=amd64 go build $(GOFLAGS) -o ./binStock-market-$(VERSION)-osx-64         $(PACKAGE)
	GOOS=freebsd GOARCH=amd64 go build $(GOFLAGS) -o ./binStock-market-$(VERSION)-freebsd-64     $(PACKAGE)
	GOOS=linux   GOARCH=amd64 go build $(GOFLAGS) -o ./binStock-market-$(VERSION)-linux-64       $(PACKAGE)
	GOOS=windows GOARCH=amd64 go build $(GOFLAGS) -o ./binStock-market-$(VERSION)-windows-64.exe $(PACKAGE)
	GOOS=windows GOARCH=386   go build $(GOFLAGS) -o ./binStock-market-$(VERSION)-windows-32.exe $(PACKAGE)
