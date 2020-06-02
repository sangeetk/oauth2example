package linkedin

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"

	"github.com/astaxie/beego"
	"github.com/sangeetk/oauth2example/sessions"
	"golang.org/x/oauth2"
	"golang.org/x/oauth2/linkedin"
)

var config = &oauth2.Config{
	ClientID:     beego.AppConfig.String("LinkedInClientID"),
	ClientSecret: beego.AppConfig.String("LinkedInClientSecret"),
	Endpoint:     linkedin.Endpoint,
	RedirectURL:  beego.AppConfig.String("BaseURL") + "/linkedin/callback",
	Scopes:       []string{"r_liteprofile"},
}

type Oauth2Controller struct {
	beego.Controller
}

func (c *Oauth2Controller) Login() {
	state := sessions.NewOauth2State()
	log.Println("state:", state)
	url := config.AuthCodeURL(state)
	log.Println("url:", url)
	c.Ctx.Redirect(http.StatusTemporaryRedirect, url)
}

func (c *Oauth2Controller) Callback() {
	r := c.Ctx.Request
	log.Println("request:", r)
	log.Println("error:", r.FormValue("error"))
	log.Println("error_description:", r.FormValue("error_description"))
	state := r.FormValue("state")
	log.Println("callback state:", state)

	if sessions.VerifyOauth2State(state) {
		log.Printf("Invalid oauth state: %s\n", state)
		c.Abort("500")
		return
	}

	code := r.FormValue("code")
	log.Println("code:", code)
	token, err := config.Exchange(oauth2.NoContext, code)
	if err != nil {
		log.Printf("Code exchange failed with '%s'\n", err)
		c.Abort("500")
		return
	}

	client := config.Client(oauth2.NoContext, token)

	// response, err := client.Get("https://api.linkedin.com/v2/me")
	// defer response.Body.Close()
	// contents, err := ioutil.ReadAll(response.Body)
	// fmt.Fprintf(c.Ctx.ResponseWriter, "Content: %s\n", contents)

	response, err := client.Get("https://api.linkedin.com/v2/me")
	defer response.Body.Close()
	contents, err := ioutil.ReadAll(response.Body)
	fmt.Fprintf(c.Ctx.ResponseWriter, "%s\n", contents)

}
