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

# Check if all required files exist
$requiredFiles = @("index.html", "manifest.json", "sw.js")
$missingFiles = @()

foreach ($file in $requiredFiles) {
    if (-not (Test-Path $file)) {
        $missingFiles += $file
    }
}

if ($missingFiles.Count -gt 0) {
    Write-Host "ERROR: The following files are missing:" -ForegroundColor Red
    foreach ($file in $missingFiles) {
        Write-Host "   - $file" -ForegroundColor Red
    }
    Read-Host "Press Enter to exit"
    exit 1
}

# Check if Sliki directory exists
if (-not (Test-Path "Sliki")) {
    Write-Host "ERROR: Sliki directory not found" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "SUCCESS: All required files found" -ForegroundColor Green

# Display files to be uploaded
Write-Host "`nFiles to be uploaded:" -ForegroundColor Cyan
Get-ChildItem -Recurse | Where-Object { 
    $_.Name -match '\.(html|css|js|json|png|jpg|jpeg|gif|svg|ico|md|ps1|bat)$' 
} | ForEach-Object {
    Write-Host "   $($_.FullName.Replace((Get-Location).Path + '\', ''))" -ForegroundColor Gray
}

# Confirmation for deployment
Write-Host "`nDo you want to continue with deployment?" -ForegroundColor Yellow
$confirmation = Read-Host "Enter 'yes' to continue"

if ($confirmation -ne "yes") {
    Write-Host "Deployment cancelled" -ForegroundColor Red
    exit 0
}

# Git configuration
Write-Host "`nConfiguring Git..." -ForegroundColor Blue
git config --global user.name "tomepetkovski"
git config --global user.email "tomepetkovski@example.com"

# Initialize Git repository
Write-Host "Initializing Git repository..." -ForegroundColor Blue
git init

# Add all files
Write-Host "Adding files..." -ForegroundColor Blue
git add .

# Check status
Write-Host "Git status:" -ForegroundColor Blue
git status --short

# Commit
Write-Host "Creating commit..." -ForegroundColor Blue
git commit -m "Deploy Raza Kanina website with mobile optimization and PWA features

Features:
- Responsive design for all devices
- Multi-language support (10 languages)
- PWA functionality with Service Worker
- Touch interactions and gestures
- Mobile-optimized UI components
- E-commerce functionality
- Admin panel
- SEO optimization
- Performance optimizations"

# Add remote
Write-Host "Adding GitHub remote..." -ForegroundColor Blue
git remote add origin https://github.com/tomepetkovski/rozakaninadev.git

# Push to GitHub
Write-Host "Uploading to GitHub..." -ForegroundColor Blue
git branch -M main
git push -u origin main

Write-Host "`n" -ForegroundColor Green
Write-Host "Deployment completed successfully!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green

Write-Host "`nYour website will be available at:" -ForegroundColor Cyan
Write-Host "https://tomepetkovski.github.io/rozakaninadev/" -ForegroundColor White

Write-Host "`nFor mobile testing:" -ForegroundColor Yellow
Write-Host "1. Open URL in Chrome" -ForegroundColor Gray
Write-Host "2. Press F12" -ForegroundColor Gray
Write-Host "3. Click mobile device icon (Ctrl+Shift+M)" -ForegroundColor Gray
Write-Host "4. Test all functions" -ForegroundColor Gray

Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "1. Go to https://github.com/tomepetkovski/rozakaninadev" -ForegroundColor Gray
Write-Host "2. Click Settings > Pages" -ForegroundColor Gray
Write-Host "3. Select 'Deploy from a branch'" -ForegroundColor Gray
Write-Host "4. Select main branch and / (root)" -ForegroundColor Gray
Write-Host "5. Click Save" -ForegroundColor Gray

Write-Host "`nIf you have problems, check:" -ForegroundColor Yellow
Write-Host "- Whether all files are uploaded" -ForegroundColor Gray
Write-Host "- Whether GitHub Pages is enabled" -ForegroundColor Gray
Write-Host "- Whether HTTPS works" -ForegroundColor Gray
Write-Host "- Whether Service Worker is available" -ForegroundColor Gray

Write-Host "`nTesting checklist:" -ForegroundColor Yellow
Write-Host "Responsive design" -ForegroundColor Gray
Write-Host "Touch interactions" -ForegroundColor Gray
Write-Host "Language switcher" -ForegroundColor Gray
Write-Host "PWA functionality" -ForegroundColor Gray
Write-Host "E-commerce functions" -ForegroundColor Gray
Write-Host "Admin panel" -ForegroundColor Gray
Write-Host "SEO optimization" -ForegroundColor Gray

Write-Host "`nYour Raza Kanina website is ready for online testing!" -ForegroundColor Green

# Open GitHub repository
Start-Process "https://github.com/tomepetkovski/rozakaninadev"

Read-Host "`nPress Enter to exit"
