# 🚀 GitHub Pages Деплојмент за Роза Канина

## 📋 Вашиот Репозиториј
**URL:** https://github.com/tomepetkovski/rozakaninadev/upload

## 🔧 Чекор по Чекор Деплојмент

### Чекор 1: Подготовка на Фајлови
Проверете дали сите фајлови се во `c:\INTERNET_STRANICA`:
- ✅ index.html (главен фајл)
- ✅ manifest.json (PWA менифест)
- ✅ sw.js (Service Worker)
- ✅ Sliki/ (сите слики)
- ✅ ai-herbal-assistant.html (AI асистент)
- ✅ deploy-instructions.md
- ✅ quick-deploy-guide.md
- ✅ replit-deploy.html

### Чекор 2: Git Инсталација и Конфигурација
Ако немате Git инсталирано:

#### Windows:
1. Оди на https://git-scm.com/download/win
2. Преземете и инсталирајте Git
3. Отворете нов PowerShell/CMD
4. Проверете инсталација:
```bash
git --version
```

#### Конфигурација на Git:
```bash
git config --global user.name "tomepetkovski"
git config --global user.email "your-email@example.com"
```

### Чекор 3: Клонирање и Качување на Фајлови

#### Метод 1: Git Clone (Препорачано)
```bash
# 1. Клонирајте го репозиторијот
git clone https://github.com/tomepetkovski/rozakaninadev.git
cd rozakaninadev

# 2. Копирајте ги сите фајлови од c:\INTERNET_STRANICA во rozakaninadev фолдерот
# (Ctrl+C, Ctrl+v или drag-and-drop)

# 3. Качете ги фајловите
git add .
git commit -m "Deploy Raza Kanina website with mobile optimization and PWA features"
git push origin main
```

#### Метод 2: GitHub Desktop (Лесно)
1. Инсталирајте GitHub Desktop: https://desktop.github.com/
2. Clone репозиториј: `https://github.com/tomepetrovski/rozakaninadev.git`
3. Копирајте ги фајловите во репозиториј фолдерот
4. Commit и Push преку GUI

#### Метод 3: GitHub Web Interface (Без Git)
1. Оди на: https://github.com/tomepetkovski/rozakaninadev
2. Кликнете на "Add file" → "Upload files"
3. Влечете ги сите фајлови од c:\INTERNET_STRANICA
4. Напишете commit message: "Deploy Raza Kanina website"
5. Кликнете "Commit changes"

### Чекор 4: Активирање на GitHub Pages

1. Оди на: https://github.com/tomepetkovski/rozakaninadev
2. Кликнете на "Settings" таб
3. Во левото мени, кликнете на "Pages"
4. Под "Build and deployment":
   - Изберете "Deploy from a branch"
   - Source: "Deploy from a branch"
   - Branch: "main"
   - Folder: "/ (root)"
5. Кликнете "Save"

### Чекор 5: Тестирање

Вашиот сајт ќе биде достапен на:
**https://tomepetkovski.github.io/rozakaninadev/**

Почекајте 1-2 минути за деплојмент да се заврши.

## 📱 Мобилно Тестирање

### Chrome DevTools:
1. Отворете го сајтот во Chrome
2. Притиснете `F12`
3. Кликнете на мобилна икона (Ctrl+Shift+M)
4. Тестирајте различни уреди:
   - iPhone 12 Pro
   - Samsung Galaxy S20
   - iPad Pro
   - Custom резолуции

### Real Device Testing:
1. Скенирајте QR code со мобилен уред
2. Тестирајте ги сите функции:
   - ✅ Responsive дизајн
   - ✅ Touch интеракции
   - ✅ Language switcher
   - ✅ PWA инсталација
   - ✅ E-commerce функции
   - ✅ Admin панел

## 🔍 Тестинг Чеклист

### ✅ Основни Функции
- [ ] Сајтот се вчитува на https://tomepetkovski.github.io/rozakaninadev/
- [ ] Навигацијата работи на мобилни уреди
- [ ] Responsive дизајн за сите екрани
- [ ] Language switcher работи
- [ ] PWA се инсталира на мобилни

### ✅ E-commerce Функции
- [ ] Кошничка работи на мобилни
- [ ] Checkout процес работи
- [ ] Плаќање симулација работи
- [ ] Админ панел е достапен
- [ ] Нарачки се зачувуваат

### ✅ PWA Функции
- [ ] Service Worker е активен
- [ ] Manifest.json е достапен
- [ ] "Add to Home Screen" работи
- [ ] Offline мод работи
- [ ] Push notifications се подготвени

### ✅ SEO и Перформанс
- [ ] Meta tags се правилни
- [ ] Open Graph работи
- [ ] Core Web Vitals се добри
- [ ] Images се оптимизирани
- [ ] HTTPS работи

## 🚨 Чести Проблеми и Решенија

### Проблем: Сајтот не се вчитува
**Решение:** Проверете дали index.html е во root фолдер

### Проблем: PWA не се инсталира
**Решение:** Проверете дали manifest.json и sw.js се достапни

### Проблем: Слики не се вчитуваат
**Решение:** Проверете дали Sliki фолдерот е качен

### Проблем: Service Worker не работи
**Решение:** Проверете дали sw.js е во root и има правилен content-type

## 📊 Перформанс Тестинг

### Google PageSpeed Insights:
1. Оди на: https://pagespeed.web.dev/
2. Внесете го URL: https://tomepetkovski.github.io/rozakaninadev/
3. Анализирајте мобилна и десктоп верзија

### Core Web Vitals:
- **LCP:** < 2.5 секунди
- **FID:** < 100 милисекунди
- **CLS:** < 0.1

## 🎯 Следни Чекори

1. **Деплојајте го сајтот** според инструкциите
2. **Тестирајте на мобилни уреди**
3. **Проверете ги сите функции**
4. **Оптимизирајте ако е потребно**
5. **Делете го URL со клиенти**

## 📞 Поддршка

Ако имате проблеми:
- Проверете GitHub Pages статус
- Проверете console за JavaScript грешки
- Проверете network таб за HTTP прашања
- Контактирајте ме за помош

**Вашиот Роза Канина веб-сајт е спремен за GitHub Pages деплојмент!** 🚀
