'Hunter Glisson
'Week 9 Assignment

Partial Class Navigation
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim userNameCook As HttpCookie
        userNameCook = Request.Cookies("userName")

        lblAssigname.Text = Application("Assignment")
        lblWelcome.Text = "Welcome to the site, " + Server.HtmlEncode(userNameCook.Value) + "."
    End Sub
End Class
