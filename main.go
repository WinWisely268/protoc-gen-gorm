package main

import (
	"github.com/gogo/protobuf/vanity/command"
	"github.com/infobloxopen/protoc-gen-gorm/plugin"
)

func main() {
	op := &plugin.OrmPlugin{}
	response := command.GeneratePlugin(command.Read(), op, ".pb.gorm.go")
	op.CleanFiles(response)
	command.Write(response)

}
