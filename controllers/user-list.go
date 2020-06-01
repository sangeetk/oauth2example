package controllers

import (
	"github.com/astaxie/beego"
)

type UserListController struct {
	beego.Controller
}

func (c *UserListController) Get() {
	c.TplName = "user-list.tpl"
}
