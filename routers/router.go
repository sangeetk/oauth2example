package routers

import (
	"github.com/sangeetk/oauth2example/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
}
