@echo off
REM BMWStream Project - Quick Build Script for Windows

echo.
echo ==========================================
echo BMWStream Android Project - Build Script
echo ==========================================
echo.

REM Check if ZIP exists
if not exist "BMWStream-project.zip" (
    echo ERROR: BMWStream-project.zip not found!
    echo Please make sure the ZIP file is in this directory.
    pause
    exit /b 1
)

echo [1/4] Extracting project...
tar -xf BMWStream-project.zip
if %errorlevel% neq 0 (
    powershell -command "Expand-Archive -Path BMWStream-project.zip -DestinationPath ."
)
echo [✓] Extract complete

echo.
echo [2/4] Checking for build files...
for /r . %%f in (build.gradle) do (
    if exist "%%~dpf" (
        set "PROJECT_DIR=%%~dpf"
        echo [✓] Found project at: !PROJECT_DIR!
    )
)

echo.
echo [3/4] Checking Java installation...
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java not found!
    echo Please install Java from: https://www.oracle.com/java/technologies/downloads/
    pause
    exit /b 1
)
echo [✓] Java is installed

echo.
echo [4/4] Building APK...
echo.
call gradlew.bat assembleDebug

if %errorlevel% equ 0 (
    echo.
    echo ==========================================
    echo [✓] BUILD SUCCESSFUL!
    echo ==========================================
    echo.
    echo Your APK is ready at:
    echo app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo You can now install it on your Android device!
    echo.
) else (
    echo.
    echo ==========================================
    echo [ERROR] BUILD FAILED
    echo ==========================================
    echo Please check the errors above and try again.
    echo.
)

pause
