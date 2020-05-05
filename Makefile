.PHONY: gen

gen:
	protoc --proto_path=proto proto/*.proto --go_out=plugins=grpc:pb

run:
	go run main.go

test:
	go test -cover -race ./...

