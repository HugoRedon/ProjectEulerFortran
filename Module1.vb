Imports System.IO

Module Module1

    Dim matrix(20, 20) As Integer
    Dim digits As Integer = 4
    Dim size As Integer = 20

    Sub Main()

        Try
            Using readr As New StreamReader("TextFile1.txt")
                Dim text As String


                For i = 0 To size - 1
                    text = readr.ReadLine()
                    'Console.WriteLine(text)
                    Dim numbers As String() = Split(text, " ")
                    For j = 0 To size - 1
                        matrix(i, j) = Integer.Parse(numbers(j))
                    Next
                Next

                '  report()
                'testing()
              
                Console.WriteLine("max mult: " & getMaximumMult())
            End Using
        Catch e As IOException
            Console.WriteLine("error reading text" & e.Message)
        End Try

        Console.WriteLine("successfull read")
        Console.Read()

    End Sub




    Public Sub testing()

        Dim test2 As Boolean = shouldICalculate(17) = False
        Dim test4 As Boolean = diagonal(0, 0) = (8 * 49 * 31 * 23)
        Dim test5 As Boolean = shouldICalculateUp(3) = False
        Dim test6 As Boolean = shouldICalculateUp(4)

        digits = 2
        Dim test1 As Boolean = right(0, 0) = 16
        Dim test3 As Boolean = down(5, 19) = (50 * 70)

        Console.WriteLine("Test rigth: " & test1)
        Console.WriteLine("Test right bound: " & test2)
        Console.WriteLine("test down : " & test3)
        Console.WriteLine("test diagonal : " & test4)
        Console.WriteLine("test forward diagonal : " & test5)
        Console.WriteLine("test forward diagonal : " & test6)

    End Sub

    Public Function maxMult(i As Integer, j As Integer) As Integer
        Dim max As Integer = 0
        Dim m1 = right(i, j)
        Dim m2 = down(i, j)
        Dim m3 = diagonal(i, j)
        Dim m4 = forwardDiagonal(i, j)

        max = If(m1 > m2, m1, m2)
        max = If(max > m3, max, m3)
        max = If(max > m4, max, m4)

        Return max

    End Function


    Public Function getMaximumMult() As Integer

        Dim mult As Integer
        Dim max As Integer = 0

        For i = 0 To size - 1
            For j = 0 To size - 1
                mult = maxMult(i, j)
                If (mult > max) Then
                    max = mult
                End If
            Next
        Next



        Return max

    End Function





    Public Sub report()
        For i = 0 To size - 1
            For j = 0 To size - 1
                Console.Write(matrix(i, j) & " ")
            Next
            Console.WriteLine()
        Next
    End Sub

    Public Function right(i As Integer, j As Integer) As Integer
        If Not shouldICalculate(j) Then Return -1
        Dim result As Integer = 1
        For k = j To j + digits - 1
            Dim nextNum = matrix(i, k)
            result = result * matrix(i, k)
        Next


        Return result
    End Function

    Public Function down(i As Integer, j As Integer) As Integer
        If Not shouldICalculate(i) Then Return -1
        Dim result As Integer = 1
        For k = i To i + digits - 1
            Dim nextNum = matrix(k, j)
            result = result * matrix(k, j)
        Next

        Return result
    End Function

    Public Function forwardDiagonal(i As Integer, j As Integer) As Integer
        If Not shouldICalculate(j) Then Return -1
        If Not shouldICalculateUp(i) Then Return -1
        Dim result As Integer = 1

        Dim row As Integer = i
        Dim column As Integer = j

        For counter = 0 To digits - 1
            Dim nextNum = matrix(row, column)
            result = result * matrix(row, column)
            row = row - 1
            column = column + 1
        Next

        Return result
    End Function

    Public Function diagonal(i As Integer, j As Integer) As Integer
        If Not shouldICalculate(i) Then Return -1
        If Not shouldICalculate(j) Then Return -1


        Dim result As Integer = 1

        Dim row As Integer = i
        Dim column As Integer = j

        For counter = 0 To digits - 1
            Dim nextNum = matrix(row, column)
            result = result * matrix(row, column)
            row = row + 1
            column = column + 1
        Next

        Return result
    End Function

    Public Function shouldICalculate(index As Integer) As Boolean
        Return Not (index + digits) > size
    End Function

    Public Function shouldICalculateUp(index As Integer) As Boolean
        Return Not (index - digits) < 0
    End Function

End Module
