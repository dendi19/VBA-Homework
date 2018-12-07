Sub aggregate_data()
         For Each ws In Worksheets
         'MsgBox (ws.Name)
            'DirArray = Range(Cells(1, 1).Address(), Cells(1, end_col).Address()).Value
            DirArray = ws.Range("A1:D1").Value
            Total = Application.WorksheetFunction.Sum(DirArray)
            'MsgBox (Total)
            ' MsgBox (Join(DirArray, ", "))
         Next ws
End Sub