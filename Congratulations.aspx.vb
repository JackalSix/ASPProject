'Hunter Glisson
'Week 9 Assignment
Partial Class Congratulations
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblAssigname.Text = Application("Assignment")

        'If Session("UserID") Is Nothing Or Session("Password") Is Nothing Then
        '    Response.Redirect("NewAccount.aspx") 'Throws the user back to the registry page because they clearly cheated if the sessions are empty
        'Else

        'lblUserid.Text = Session("UserID")
        'lblPassword.Text = Session("Password")

        Dim userIDCook As HttpCookie
        Dim userPassCook As HttpCookie
        Dim userNameCook As HttpCookie
        userIDCook = Request.Cookies("userID")
        userPassCook = Request.Cookies("userPass")
        userNameCook = Request.Cookies("userName")

        If userIDCook Is Nothing Or userPassCook Is Nothing Or userNameCook Is Nothing Then
            Response.Redirect("NewAccount.aspx") 'Throws the user back to the registry page because they clearly cheated if the sessions are empty
        Else

            lblUserid.Text = Server.HtmlEncode(userIDCook.Value)
            lblPassword.Text = Server.HtmlEncode(userPassCook.Value)
        End If
    End Sub
End Class
