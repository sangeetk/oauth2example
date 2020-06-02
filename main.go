package main

import (
	"math/rand"
	"time"

	"github.com/astaxie/beego"
	_ "github.com/sangeetk/oauth2example/routers"
)

func main() {

	rand.Seed(time.Now().UnixNano())

	beego.Run()
}
