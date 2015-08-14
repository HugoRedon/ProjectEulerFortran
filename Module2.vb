Module Module2
    Public Function triangleNumber(index As Integer) ' index starts at 1
        Dim result As Integer
        For i = 1 To index
            result = result + i
        Next

        Return result
    End Function

    Public Function numberOfDivisors(number As Integer) As Integer
        Dim divisors As New List(Of Integer)
        For i = 1 To number
            If ((number Mod i) = 0) Then
                divisors.Add(i)
            End If
        Next
        Return divisors.Count
    End Function

    Sub Main()
        Dim counter = 1

        Dim maxDiv = 0
        
        Dim div = numberOfDivisors(triangleNumber(counter))

        While (div < 500)
            div = numberOfDivisors(triangleNumber(counter))
            If div > maxDiv Then
                maxDiv = div
                Console.WriteLine(maxDiv)
            End If
            counter = counter + 1
        End While


        Console.WriteLine(triangleNumber(counter - 1))
            Console.Read()
    End Sub

    Public Sub testing()
        Dim test = triangleNumber(7) = 28
        Dim test1 = numberOfDivisors(triangleNumber(7)) > 5
        Console.WriteLine("test: " & test)
        Console.WriteLine("test1: " & test1)

    End Sub
End Module
