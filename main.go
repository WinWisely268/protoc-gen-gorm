package main

import (
	"log"

	"github.com/gogo/protobuf/vanity/command"
	"github.com/infobloxopen/protoc-gen-gorm/plugin"
)

func main() {
	op := &plugin.OrmPlugin{}
	response := command.GeneratePlugin(command.Read(), op, ".pb.gorm.go")
	op.CleanFiles(response)

	log.Printf("orm plugin %#v\n", op)
	if len(response.String()) == 0 {
		log.Fatal("empty response")
	}
	command.Write(response)

}
