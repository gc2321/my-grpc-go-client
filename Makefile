ifeq ($(OS), Windows_NT)
	BIN_FILENAME  := my-grpc-client.exe
else
	BIN_FILENAME  := my-grpc-client
endif

.PHONY: tidy
tidy:
	go mod tidy


.PHONY: clean
clean:
	$(RM) -rf ./bin

.PHONY: build
build: clean
	go build -o ./bin/${BIN_FILENAME} ./cmd


.PHONY: execute
execute: clean build
	./bin/${BIN_FILENAME}