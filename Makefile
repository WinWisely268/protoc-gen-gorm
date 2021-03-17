include Makefile.buf

GOPATH ?= $(HOME)/go
SRCPATH := $(patsubst %/,%,$(GOPATH))/src

PROJECT_ROOT := github.com/infobloxopen/protoc-gen-gorm

lint: $(BUF)
	buf lint

build: $(BUF)
	buf build
