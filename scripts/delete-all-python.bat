@echo off
echo Удаляю все версии Python...
REM Получение списка всех установленных версий Python
for /f "tokens=*" %%i in ('where python') do (
    echo Удаляю %%i
    REM Удаление директории с Python
    rmdir /s /q "%%~dpi"
)
echo Все версии Python удалены.
pause
del C:\Users\Student\AppData\Local\Microsoft\WindowsApps\python.exe
