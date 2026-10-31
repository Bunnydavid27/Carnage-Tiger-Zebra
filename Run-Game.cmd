@echo off
cd /d "%~dp0"
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'http://localhost:8787' -TimeoutSec 2 | Out-Null; exit 0 } catch { exit 1 }"
if errorlevel 1 start "Carnage game server" /min node server.js
timeout /t 2 /nobreak >nul
start "" http://localhost:8787/?mode=multiplayer
echo The server is running. Enter your name, choose Tiger or Zebra, then create a Quick Match or Private Room.
echo When the room is created, copy the invite link and share it with friends.
pause

