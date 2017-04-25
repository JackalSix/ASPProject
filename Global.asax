<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        Application("Assignment") = "Lab Assignment Ch.8-Hunter Glisson"
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        
    End Sub
       
</script>