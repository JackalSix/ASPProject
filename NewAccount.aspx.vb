'Hunter Glisson
'Week 9 Assignment
Partial Class NewAccount
    Inherits System.Web.UI.Page

    Sub CheckLength(ByVal s As Object, ByVal e As ServerValidateEventArgs)
        If Len(e.Value) = 5 Then
            e.IsValid = True
        Else
            e.IsValid = False
        End If
    End Sub

    Protected Sub btnCreate_Click(sender As Object, e As EventArgs) Handles btnCreate.Click
        Try
            If IsValid Then
                'Session("UserID") = txtUserid.Text
                'Session("Password") = txtPassword.Text

                Dim userIDCook As HttpCookie
                Dim userPassCook As HttpCookie
                Dim userNameCook As HttpCookie

                userIDCook = New HttpCookie("UserID", txtUserid.Text)
                userIDCook.Expires = DateTime.Now.AddMinutes(3)
                Response.Cookies.Add(userIDCook)

                userPassCook = New HttpCookie("UserPass", txtPassword.Text)
                userPassCook.Expires = DateTime.Now.AddMinutes(3)
                Response.Cookies.Add(userPassCook)

                userNameCook = New HttpCookie("UserName", txtFname.Text)
                userNameCook.Expires = DateTime.Now.AddMinutes(3)
                Response.Cookies.Add(userNameCook)

                Response.Redirect("Congratulations.aspx")
            End If
        Catch ex As Exception
            lblError.Text = "Stop breaking my programs!"
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        txtLname.Focus()
        lblAssigname.Text = Application("Assignment")
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Response.Redirect("NewAccount.aspx")
    End Sub
End Class
