package routers

import (
	"github.com/astaxie/beego"
	"github.com/sangeetk/oauth2example/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/login", &controllers.LoginController{})
	beego.Router("/logout", &controllers.LogoutController{})
	beego.Router("/user/all", &controllers.UserListController{})
	beego.Router("/user/search", &controllers.UserSearchController{})
	beego.Router("/user/:id", &controllers.UserDetailsController{})
	beego.Router("/user/set_password", &controllers.UserPasswordController{})
	beego.SetStaticPath("/assets", "assets")
}
