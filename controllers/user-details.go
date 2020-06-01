package controllers

import (
	"github.com/astaxie/beego"
)

type UserDetailsController struct {
	beego.Controller
}

func (c *UserDetailsController) Get() {
	c.TplName = "user-details.tpl"
}
