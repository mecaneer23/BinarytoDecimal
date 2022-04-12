Module BinarytoDecimal
    Function BinaryToDecimal(binaryNumber As Integer)
        Dim value As String = CStr(binaryNumber)
        Dim length As Integer = Len(value)
        Dim output As Integer = 0
        For position As Integer = 0 To length-1
            Dim chr = value(position)
            If chr = "1" Then
                output += 2^(length-position-1)
            ElseIf chr = "0" Then
                Continue For
            Else
                Return "Make sure you only input binary values"
            End If
        Next
        Return output
    End Function

    Public Sub Main
        Console.Write("Binary Number: ")
        Dim num = Console.ReadLine()
        Console.WriteLine(BinaryToDecimal(num))
    End Sub
End Module
