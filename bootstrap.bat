::: Set this as your RL Launch options: `"C:\path\to\bootstrap.bat" & %command%`

::: The launch command I used before, the second one also minimizes the terminal window
::: START /MIN CMD.EXE /C "C:\Users\Crumbly\bakkes.bat"

::: Thanks Vera for this launch command!
powershell -WindowStyle Hidden -Command Start-Process "C:\Users\Crumbly\bakkes.bat" -WindowStyle Hidden
