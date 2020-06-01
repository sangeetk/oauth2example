package controllers

import (
	"github.com/astaxie/beego"
)

type UserSearchController struct {
	beego.Controller
}

func (c *UserSearchController) Get() {
	c.TplName = "user-search.tpl"
}
