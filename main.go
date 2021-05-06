package main

import (
	"fmt"

	crawler "github.com/mentaLwz/infoFly/crawler"
)

var Version string
var Author string
var BuildInfo string
var BuildDate string

func main() {

	fmt.Println(Version)
	fmt.Println(Author)
	fmt.Println(BuildInfo)
	fmt.Println(BuildDate)
	crawler.Fly()

}
