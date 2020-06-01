package controllers

import (
	"net/http"

	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Redirect("/login", http.StatusSeeOther)
}
