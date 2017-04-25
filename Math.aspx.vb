'Hunter Glisson
'Week 9 Assignment

Partial Class Math
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblAssigname.Text = Application("Assignment")
        txtInput1.Focus()
    End Sub

    Protected Sub btnCalc_Click(sender As Object, e As EventArgs) Handles btnCalc.Click

        Try
            If txtInput1.Text <> "" Then
                If txtInput2.Text <> "" Then
                    If IsNumeric(txtInput1.Text) Then
                        If IsNumeric(txtInput2.Text) Then
                            If System.Math.Floor(CDbl(txtInput1.Text)) = System.Math.Ceiling(CDbl(txtInput1.Text)) And CDbl(txtInput1.Text) > 0 Then
                                If System.Math.Floor(CDbl(txtInput2.Text)) = System.Math.Ceiling(CDbl(txtInput2.Text)) And CDbl(txtInput2.Text) > 0 Then

                                    lblError.Text = ""

                                    Dim num1 As Integer = CInt(txtInput1.Text)
                                    Dim num2 As Integer = CInt(txtInput2.Text)
                                    Dim answer As Integer = num1

                                    If radMoney.Checked = True Then

                                        For i = 1 To num2 - 1 Step ++1
                                            answer = answer * 2
                                        Next

                                        lblAnswer.Text = "I will recieve " + (answer / 100).ToString("c")
                                    Else
                                        For i = 1 To num2 - 1 Step ++1
                                            answer += num1
                                        Next

                                        lblAnswer.Text = "The product of " + CStr(num1) + " and" + CStr(num2) + " is " + CStr(answer)
                                    End If
                                Else
                                    lblAnswer.Text = ""
                                    lblError.Text = "Number 2 must be a whole number greater than zero."
                                End If
                            Else
                                lblAnswer.Text = ""
                                lblError.Text = "Number 1 must be a whole number greater than zero."
                            End If
                        Else
                            lblAnswer.Text = ""
                            lblError.Text = "Number 2 must be a number"
                        End If
                    Else
                        lblAnswer.Text = ""
                        lblError.Text = "Number 1 must be a number"
                    End If
                Else
                    lblAnswer.Text = ""
                    lblError.Text = "Enter a number for number 2"
                End If
            Else
                lblAnswer.Text = ""
                lblError.Text = "Enter a number for number 1"
            End If

        Catch ex As Exception
            lblError.Text = "What did you even do? Don't do it any more!"
        End Try
    End Sub
End Class
