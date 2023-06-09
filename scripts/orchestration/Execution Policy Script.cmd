PowerShell -Command "Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force" >> "%TEMP%\StartupLog.txt" 2>&1

# Place this file in the following file explorer location
#C:\Users\swag\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
#It will set the current users Execution Policy to Unrestricted and allow that User to execute all other scripts. 