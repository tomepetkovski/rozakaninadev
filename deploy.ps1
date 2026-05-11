# GitHub Pages Deployment Script for Raza Kanina
# Author: tomepetkovski
# Description: Automated deployment to GitHub Pages

Write-Host "GitHub Pages Deployment for Raza Kanina" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green

# Check if we are in the correct directory
if (-not (Test-Path "index.html")) {
    Write-Host "ERROR: index.html not found. Please run this script from c:\INTERNET_STRANICA directory" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "SUCCESS: index.html found" -ForegroundColor Green

# Check if Git is installed
try {
    git --version | Out-Null
    Write-Host "SUCCESS: Git is installed" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed. Please install Git from https://git-scm.com/" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Проверка дали сите важни фајлови постојат
$requiredFiles = @("index.html", "manifest.json", "sw.js")
$missingFiles = @()

foreach ($file in $requiredFiles) {
    if (-not (Test-Path $file)) {
        $missingFiles += $file
    }
}

if ($missingFiles.Count -gt 0) {
    Write-Host "❌ Следниве фајлови не се пронајдени:" -ForegroundColor Red
    foreach ($file in $missingFiles) {
        Write-Host "   - $file" -ForegroundColor Red
    }
    Read-Host "Притиснете Enter за да излезете"
    exit 1
}

# Проверка дали Sliki директориумот постои
if (-not (Test-Path "Sliki")) {
    Write-Host "❌ Sliki директориум не е пронајден" -ForegroundColor Red
    Read-Host "Притиснете Enter за да излезете"
    exit 1
}

Write-Host "✅ Сите важни фајлови се пронајдени" -ForegroundColor Green

# Прикажување на фајлови кои ќе се качат
Write-Host "`n📁 Фајлови кои ќе се качат:" -ForegroundColor Cyan
Get-ChildItem -Recurse | Where-Object { 
    $_.Name -match '\.(html|css|js|json|png|jpg|jpeg|gif|svg|ico|md|ps1|bat)$' 
} | ForEach-Object {
    Write-Host "   📄 $($_.FullName.Replace((Get-Location).Path + '\', ''))" -ForegroundColor Gray
}

# Потврда за деплојмент
Write-Host "`n🤔 Дали сакате да продолжите со деплојмент?" -ForegroundColor Yellow
$confirmation = Read-Host "Внесете 'yes' за да продолжите"

if ($confirmation -ne "yes") {
    Write-Host "❌ Деплојментот е откажан" -ForegroundColor Red
    exit 0
}

# Конфигурација на Git
Write-Host "`n⚙️ Конфигурација на Git..." -ForegroundColor Blue
git config --global user.name "tomepetkovski"
git config --global user.email "tomepetkovski@example.com"

# Иницијализација на Git репозиториј
Write-Host "📦 Иницијализација на Git репозиториј..." -ForegroundColor Blue
git init

# Додавање на сите фајлови
Write-Host "➕ Додавање на фајлови..." -ForegroundColor Blue
git add .

# Проверка на статус
Write-Host "📊 Git статус:" -ForegroundColor Blue
git status --short

# Commit
Write-Host "💾 Креирање на commit..." -ForegroundColor Blue
git commit -m "Deploy Raza Kanina website with mobile optimization and PWA features

✅ Features:
- Responsive design for all devices
- Multi-language support (10 languages)
- PWA functionality with Service Worker
- Touch interactions and gestures
- Mobile-optimized UI components
- E-commerce functionality
- Admin panel
- SEO optimization
- Performance optimizations"

# Додавање на remote
Write-Host "🔗 Додавање на GitHub remote..." -ForegroundColor Blue
git remote add origin https://github.com/tomepetkovski/rozakaninadev.git

# Push to GitHub
Write-Host "📤 Качување на GitHub..." -ForegroundColor Blue
git branch -M main
git push -u origin main

Write-Host "`n" -ForegroundColor Green
Write-Host "✅ Деплојментот е завршен!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green

Write-Host "`n🔗 Вашиот сајт ќе биде достапен на:" -ForegroundColor Cyan
Write-Host "https://tomepetkovski.github.io/rozakaninadev/" -ForegroundColor White

Write-Host "`n📱 За мобилно тестирање:" -ForegroundColor Yellow
Write-Host "1. Отворете го URL во Chrome" -ForegroundColor Gray
Write-Host "2. Притиснете F12" -ForegroundColor Gray
Write-Host "3. Кликнете на мобилна икона (Ctrl+Shift+M)" -ForegroundColor Gray
Write-Host "4. Тестирајте ги сите функции" -ForegroundColor Gray

Write-Host "`n🎯 Следни чекори:" -ForegroundColor Yellow
Write-Host "1. Оди на https://github.com/tomepetkovski/rozakaninadev" -ForegroundColor Gray
Write-Host "2. Кликнете на Settings > Pages" -ForegroundColor Gray
Write-Host "3. Изберете 'Deploy from a branch'" -ForegroundColor Gray
Write-Host "4. Изберете main branch и / (root)" -ForegroundColor Gray
Write-Host "5. Кликнете Save" -ForegroundColor Gray

Write-Host "`n📞 Доколку имате проблеми, проверете:" -ForegroundColor Yellow
Write-Host "- Дали сите фајлови се качени" -ForegroundColor Gray
Write-Host "- Дали GitHub Pages е активиран" -ForegroundColor Gray
Write-Host "- Дали HTTPS работи" -ForegroundColor Gray
Write-Host "- Дали Service Worker е достапен" -ForegroundColor Gray

Write-Host "`n🔍 Тестинг чеклист:" -ForegroundColor Yellow
Write-Host "✅ Responsive дизајн" -ForegroundColor Gray
Write-Host "✅ Touch интеракции" -ForegroundColor Gray
Write-Host "✅ Language switcher" -ForegroundColor Gray
Write-Host "✅ PWA функционалности" -ForegroundColor Gray
Write-Host "✅ E-commerce функции" -ForegroundColor Gray
Write-Host "✅ Admin панел" -ForegroundColor Gray
Write-Host "✅ SEO оптимизација" -ForegroundColor Gray

Write-Host "`n🚀 Вашиот Роза Канина веб-сајт е спремен за онлајн тестирање!" -ForegroundColor Green

# Отворање на GitHub репозиторијот
Start-Process "https://github.com/tomepetkovski/rozakaninadev"

Read-Host "`nПритиснете Enter за да излезете"
