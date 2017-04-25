'Hunter Glisson
'Week 9 Assignment

Partial Class Conversion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblAssigname.Text = Application("Assignment")
        txtConversion.Focus()
    End Sub

    Protected Sub btnConvert_Click(sender As Object, e As EventArgs) Handles btnConvert.Click


        Try


            If txtConversion.Text <> "" Then
                If IsNumeric(txtConversion.Text) Then
                    If System.Math.Floor(CDec(txtConversion.Text)) = System.Math.Ceiling(CDec(txtConversion.Text)) Then
                        If CDec(txtConversion.Text) > 0 And CDec(txtConversion.Text) < 256 Then

                            lblError.Text = ""

                            lblAnswer.Text = "Binary: "

                            Dim Input As Decimal = CDec(txtConversion.Text)
                            Dim Binary As Decimal
                            Dim Readout As String = ""

                            While Input > 0
                                Binary = Input Mod 2
                                Input = System.Math.Truncate(Input / 2) 'I know how the math works, and that I would recieve decimal places without this, but I'm not completly clear on this part
                                Readout = CStr(Binary) + Readout

                            End While

                            If chk8bit.Checked Then
                                Readout = Readout.PadLeft(8, "0")
                            End If

                            lblAnswer.Text += Readout
                        Else
                            lblError.Text = "Input must be between zero and 255."
                        End If
                    Else
                        lblError.Text = "Input must be a whole number."
                    End If
                Else
                    lblError.Text = "Input must be a number."
                End If
            Else
                lblError.Text = "Input required."
            End If
        Catch ex As Exception
            lblError.Text = "Stop messing with my code; It's sensitive!"
        End Try
    End Sub

End Class