package controllers

import (
	"github.com/astaxie/beego"
)

type UserPasswordController struct {
	beego.Controller
}

func (c *UserPasswordController) Get() {
	c.TplName = "user-password.tpl"
}
