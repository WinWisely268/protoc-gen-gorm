include Makefile.buf

GOPATH ?= $(HOME)/go
SRCPATH := $(patsubst %/,%,$(GOPATH))/src

PROJECT_ROOT := github.com/infobloxopen/protoc-gen-gorm

lint: $(BUF)
	buf lint

build: $(BUF)
	buf build

generate: example/**/*.pb.go

example/user/*.pb.go: example/user/*.proto
	buf generate --template example/user/buf.gen.yaml --path example/user

example/postgres_arrays/*.pb.go: example/postgres_arrays/*.proto
	buf generate --template example/postgres_arrays/buf.gen.yaml --path example/postgres_arrays
