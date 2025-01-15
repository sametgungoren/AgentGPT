REM filepath: /setup.bat
@echo off
setlocal

REM The CLI will take care of setting up the ENV variables
cd cli || exit /b 1
call npm install --legacy-peer-deps
npm run start

REM Please go into the ./next folder and run npm install with legacy peer deps
cd ../next
call npm install --legacy-peer-deps
npm run dev