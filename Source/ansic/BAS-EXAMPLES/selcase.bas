100 rem SelCase.bas  -- test SELECT CASE
110 SHELL "cls"
210 Print "SelCase.bas -- test SELECT CASE statement"
220 Input "Enter a number (0 to quit) "; d
225 If (d = 0) then end
230 Select Case d
240 Case 3 to 5
250 Print "The number is between 3 and 5."
260 Case 6
270 Print "The number you entered is 6."
280 Case 7 to 9
290 Print "The number is between 7 and 9."
300 Case If > 10
310 Print "The number is greater than 10"
320 Case If < 0
330 Print "The number is less than 0"
340 Case Else
350 Print "The number is 1, 2 or 10."
360 End Select
365 Print
370 Goto 220
