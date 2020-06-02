package controllers

import (
	"net/http"

	"github.com/astaxie/beego"
)

type Oauth2Controller struct {
	beego.Controller
}

func (c *Oauth2Controller) Get() {
	c.Redirect("/login", http.StatusSeeOther)
}
