package routers

import (
	"github.com/astaxie/beego"
	"github.com/sangeetk/oauth2example/controllers"
	"github.com/sangeetk/oauth2example/controllers/github"
	"github.com/sangeetk/oauth2example/controllers/linkedin"
)

func init() {
	beego.Router("/", &controllers.MainController{})

	beego.Router("/login", &controllers.LoginController{})
	beego.Router("/logout", &controllers.LogoutController{})

	beego.Router("/github/login", &github.Oauth2Controller{}, "get:Login")
	beego.Router("/github/callback", &github.Oauth2Controller{}, "get:Callback")

	beego.Router("/linkedin/login", &linkedin.Oauth2Controller{}, "get:Login")
	beego.Router("/linkedin/callback", &linkedin.Oauth2Controller{}, "get:Callback")

	beego.Router("/user/all", &controllers.UserListController{})
	beego.Router("/user/search", &controllers.UserSearchController{})
	beego.Router("/user/:id", &controllers.UserDetailsController{})
	beego.Router("/user/set_password", &controllers.UserPasswordController{})

	beego.SetStaticPath("/assets", "assets")
}
