'Hunter Glisson
'Week 9 Assignment

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblAssigname.Text = Application("Assignment")
        txtUser.Focus()
        Dim userIDCook As HttpCookie
        Dim userPassCook As HttpCookie
        userIDCook = Request.Cookies("userID")
        userPassCook = Request.Cookies("userPass")

        If userIDCook Is Nothing Or userPassCook Is Nothing Then
            btnLogin.Enabled = False
        Else
            btnRegister.Enabled = False
            txtUser.Text = Server.HtmlEncode(userIDCook.Value)
        End If
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim username As String = txtUser.Text
        Dim password As String = txtPass.Text
        Dim userIDCook As HttpCookie
        Dim userPassCook As HttpCookie
        userIDCook = Request.Cookies("userID")
        userPassCook = Request.Cookies("userPass")

        If username = Server.HtmlEncode(userIDCook.Value) Then
            If password = Server.HtmlEncode(userPassCook.Value) Then
                Response.Redirect("Navigation.aspx")

            Else
                Response.Redirect("logError.aspx")
            End If
        Else
            Response.Redirect("logError.aspx")
        End If

    End Sub
End Class
