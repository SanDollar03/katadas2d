@echo off
cd /d C:\Users\hardm\python\katadas2d

echo ==== Katadas2D�� 2�d�N���h�~�`�F�b�N�i�|�[�g5000�j ====
netstat -ano | findstr "LISTENING" | findstr ":5000 " >nul
if %errorlevel%==0 (
    echo Katadas2D�͂��łɋN�����ł��i�|�[�g5000���g�p���j�B
    echo 2�d�N����h�~���邽�߁A�N���𒆎~���܂��B
    pause
    exit /b
)

echo ���z����L������...
call .\Scripts\activate.bat

echo Katadas2D���N����...

pause

python app.py

pause