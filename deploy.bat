@echo off
echo 🚀 GitHub Pages Деплојмент за Роза Канина
echo ========================================

REM Проверка дали Git е инсталиран
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git не е инсталиран. Ве молиме инсталирајте Git од https://git-scm.com/
    pause
    exit /b 1
)

echo ✅ Git е инсталиран

REM Проверка дали сме во правилен директориум
if not exist "index.html" (
    echo ❌ index.html не е пронајден. Ве молиме извршете го овој скрипт од c:\INTERNET_STRANICA директориумот
    pause
    exit /b 1
)

echo ✅ index.html е пронајден

REM Проверка дали сите важни фајлови постојат
if not exist "manifest.json" (
    echo ❌ manifest.json не е пронајден
    pause
    exit /b 1
)

if not exist "sw.js" (
    echo ❌ sw.js не е пронајден
    pause
    exit /b 1
)

if not exist "Sliki" (
    echo ❌ Sliki директориум не е пронајден
    pause
    exit /b 1
)

echo ✅ Сите важни фајлови се пронајдени

REM Конфигурација на Git (ако е потребно)
echo ⚙️ Конфигурација на Git...
git config --global user.name "tomepetkovski"
git config --global user.email "tomepetkovski@example.com"

REM Иницијализација на Git репозиториј
echo 📦 Иницијализација на Git репозиториј...
git init
git add .

REM Commit
echo 💾 Креирање на commit...
git commit -m "Deploy Raza Kanina website with mobile optimization and PWA features"

REM Додавање на remote
echo 🔗 Додавање на GitHub remote...
git remote add origin https://github.com/tomepetkovski/rozakaninadev.git

REM Push to GitHub
echo 📤 Качување на GitHub...
git branch -M main
git push -u origin main

echo.
echo ✅ Деплојментот е завршен!
echo.
echo 🔗 Вашиот сајт ќе биде достапен на:
echo https://tomepetkovski.github.io/rozakaninadev/
echo.
echo 📱 За мобилно тестирање:
echo 1. Отворете го URL во Chrome
echo 2. Притиснете F12
echo 3. Кликнете на мобилна икона (Ctrl+Shift+M)
echo 4. Тестирајте ги сите функции
echo.
echo 🎯 Следни чекори:
echo 1. Оди на https://github.com/tomepetkovski/rozakaninadev
echo 2. Кликнете на Settings > Pages
echo 3. Изберете "Deploy from a branch"
echo 4. Изберете main branch и / (root)
echo 5. Кликнете Save
echo.
echo 📞 Доколку имате проблеми, проверете:
echo - Дали сите фајлови се качени
echo - Дали GitHub Pages е активиран
echo - Дали HTTPS работи
echo.
pause
