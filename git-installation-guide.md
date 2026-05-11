# 🚀 Git Инсталација Водич за Windows

## 📋 За што ви треба Git?
Git е потребен за деплојмент на GitHub Pages. Тоа е систем за контрола на верзии кој ви овозможува да качувате код на GitHub.

## 🔧 Брза Инсталација на Git

### Метод 1: Официјален Инсталер (Препорачано)
1. **Оди на:** https://git-scm.com/download/win
2. **Кликнете на:** "Download for Windows"
3. **Отворете го:** Git-2.43.0-64-bit.exe (или најнова верзија)
4. **Следете ги инсталациони чекори:**

#### Инсталациони Опции:
- **Welcome Screen:** Кликнете "Next"
- **License:** Кликнете "Next"
- **Destination:** Оставете го стандардниот пат
- **Components:** Оставете ги сите избори
- **Start Menu:** Оставете "Git"
- **Default Editor:** Изберете "Use Git from the Command Line"
- **PATH Setup:** Изберете "Use Git from the Command Line"
- **HTTPS Transport:** Изберете "Use the native OpenSSL"
- **Line Ending:** Изберете "Checkout Windows-style, commit Unix-style"
- **Terminal:** Изберете "Use MinTTY"
- **Extra Options:** Оставете ги сите избори
- **Кликнете "Install"**
- **Кликнете "Finish"**

### Метод 2: Chocolatey (Ако имате инсталирано)
```powershell
choco install git
```

### Метод 3: winget (Windows 10/11)
```powershell
winget install --id Git.Git -e --source winget
```

## ✅ Верификација на Инсталација

### Отворете нов PowerShell и извршете:
```powershell
git --version
```

**Треба да видите нешто слично на:**
```
git version 2.43.0.windows.1
```

**Ако видете ова, Git е успешно инсталиран!**

## 🔄 Конфигурација на Git

### Отворете PowerShell и извршете:
```powershell
git config --global user.name "tomepetkovski"
git config --global user.email "your-email@example.com"
```

## 🚀 Деплојмент по Инсталација

### Отворете нов PowerShell и извршете:
```powershell
cd c:\INTERNET_STRANICA
.\deploy-fixed.ps1
```

## 🎯 Алтернативни Решенија (Ако не сакате да инсталирате Git)

### 1. GitHub Desktop (Лесно)
- Оди на: https://desktop.github.com/
- Преземете и инсталирајте GitHub Desktop
- Clone репозиториј: https://github.com/tomepetkovski/rozakaninadev
- Копирајте ги фајловите во репозиториј фолдерот
- Commit и Push преку GUI

### 2. GitHub Web Interface (Без инсталација)
- Оди на: https://github.com/tomepetkovski/rozakaninadev
- Кликнете "Add file" → "Upload files"
- Влечете ги сите фајлови од c:\INTERNET_STRANICA
- Напишете commit message: "Deploy Raza Kanina website"
- Кликнете "Commit changes"

### 3. Replit (Брзо тестирање)
- Оди на: https://replit.com
- Креирајте нов "HTML, CSS, JS" проект
- Копирајте ги фајловите
- Сајтот ќе биде веднаш достапен

## 📱 Мобилно Тестирање

### Кога ќе го деплојате сајтот:
1. **URL:** https://tomepetkovski.github.io/rozakaninadev/
2. **Chrome DevTools:** F12 → Mobile Device Icon
3. **Тестирајте:** iPhone 12 Pro, Samsung Galaxy S20, iPad Pro

## 🔍 Чести Проблеми

### Проблем: "git не е препознаен"
**Решение:**
- Рестартирајте PowerShell по инсталација
- Проверете дали PATH е конфигуриран правилно
- Додадете Git во PATH рачно

### Проблем: Инсталацијата не успеева
**Решение:**
- Исклучете антивирус програм привремено
- Пуштете инсталаторот како администратор
- Проверете дали имате администраторски права

### Проблем: Git commands не работат
**Решение:**
- Проверете инсталација со `git --version`
- Конфигурирајте user.name и user.email
- Проверете интернет конекција

## 🚀 Следни Чекори

1. **Инсталирајте Git** според водичот
2. **Верифицирајте инсталација** со `git --version`
3. **Извршете деплојмент** со `.\deploy-fixed.ps1`
4. **Активирајте GitHub Pages** во Settings
5. **Тестирајте го сајтот** на мобилни уреди

## 📞 Помош

Ако имате проблеми:
- Проверете дали сте ги следиле сите чекори
- Рестартирајте PowerShell после инсталација
- Користете GitHub Desktop како алтернатива
- Контактирајте ме за дополнителна помош

**Git е лесен за инсталација и е потребен само еднаш!** 🚀
