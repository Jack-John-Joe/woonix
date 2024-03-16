@echo off
REM Enable WSL
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
REM Install Ubuntu
wsl --install -d Ubuntu
REM Run the registry script
reg import deploy.reg
REM Reboot the system
shutdown /r /t 0
