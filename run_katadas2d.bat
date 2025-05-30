@echo off
cd /d C:\Users\hardm\python\katadas2d

echo ==== Katadas2Dの 2重起動防止チェック（ポート5000） ====
netstat -ano | findstr "LISTENING" | findstr ":5000 " >nul
if %errorlevel%==0 (
    echo Katadas2Dはすでに起動中です（ポート5000が使用中）。
    echo 2重起動を防止するため、起動を中止します。
    pause
    exit /b
)

echo 仮想環境を有効化中...
call .\Scripts\activate.bat

echo Katadas2Dを起動中...

pause

python app.py

pause