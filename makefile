GOCMD		    = go
BINARY_NAME	= restserver
GOBUILD		  = GO111MODULE="on" $(GOCMD) build -ldflags="-s -w" -o ./$(BINARY_NAME) main.go

ifndef VERBOSE
.SILENT:
endif

all:
		echo [*] Compiling....
		GOOS=linux GOARCH=amd64 $(GOBUILD)
		echo [+] Finished

clean:
		rm -rf ./bin
		rm -rf .idea
