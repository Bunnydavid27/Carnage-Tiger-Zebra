@echo off
cd /d "%~dp0"
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri 'http://localhost:8787' -TimeoutSec 2 | Out-Null; exit 0 } catch { exit 1 }"
if errorlevel 1 (
  echo Start Run-Game.cmd first, then run this file again.
  pause
  exit /b 1
)
where cloudflared >nul 2>nul
if errorlevel 1 (
  echo cloudflared is not installed. Install it using the official Cloudflare Tunnel instructions.
  echo https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/downloads/
  pause
  exit /b 1
)
echo Share the https trycloudflare.com address printed below and the room code.
echo Keep this window and the host server running. This quick tunnel is for testing only.
cloudflared tunnel --url http://localhost:8787
pause
