package controllers

import (
	"github.com/astaxie/beego"
)

type LoginController struct {
	beego.Controller
}

func (c *LoginController) Get() {
	c.TplName = "login.tpl"
	c.Data["BaseURL"] = beego.AppConfig.String("BaseURL")
}
