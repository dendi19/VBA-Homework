sub tickercounter()

ticker_subtotal = 0


for ticks = 2 to 43398
current_tick = cells(ticks,1).value
next_tick = cells(ticks+1,1).value
current_volume = cells(ticks,7).Value
    if current_tick = next_tick Then
        ticker_subtotal = ticker_subtotal +current_volume
        cells(ticks,8).value = ticker_subtotal
    elseif current_tick <> next_tick Then
        ticker_subtotal = ticker_subtotal + current_volume
        cells(ticks,8).value = ticker_subtotal
        ticker_subtotal = 0
    end if

    ticker_running_total = cells(ticks,8).value
    if current_tick <> next_tick Then
        cells(ticks, 10) = Cells(ticks,1).value
        cells(ticks,11) = cells(ticks,8).value
    end if
next ticks

range("J2:J43398").SpecialCells(xlCellTypeBlanks).Delete
range("K2:K43398").SpecialCells(xlCellTypeBlanks).Delete

end sub