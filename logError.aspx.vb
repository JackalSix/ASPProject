'Hunter Glisson
'Week 9 Assignment

Partial Class logError
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblAssigname.Text = Application("Assignment")
    End Sub
End Class
