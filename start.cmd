@echo off
cd /d "%~dp0"
where node >nul 2>nul
if not errorlevel 1 (
  node server.mjs
) else if exist "%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe" (
  "%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe" server.mjs
) else (
  echo Please install Node.js and run this file again.
)
pause
