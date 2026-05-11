# Деплојмент Инструкции за Роза Канина Веб-сајт

## 🚀 Опции за Онлајн Деплојмент

### 1. **GitHub Pages (Препорачано - Бесплатно)**
```bash
# 1. Креирајте GitHub репозиториј
git init
git add .
git commit -m "Initial commit"

# 2. Поврзете се со GitHub
git remote add origin https://github.com/yourusername/roza-kanina.git
git branch -M main
git push -u origin main

# 3. Оди во Settings > Pages
# 4. Изберете "Deploy from a branch"
# 5. Изберете main branch и / (root)
# 6. Вашата страница ќе биде достапна на: https://yourusername.github.io/roza-kanina/
```

### 2. **Netlify (Препорачано - Бесплатно)**
```bash
# 1. Креирајте Netlify акаунт на https://netlify.com
# 2. Влечете го фолдерот директно во Netlify drag-and-drop
# 3. Автоматски ќе добиете URL: https://random-name.netlify.app
```

### 3. **Vercel (Препорачано - Бесплатно)**
```bash
# 1. Креирајте Vercel акаунт на https://vercel.com
# 2. Инсталирајте Vercel CLI
npm i -g vercel

# 3. Влечете го проектот
cd c:\INTERNET_STRANICA
vercel

# 4. Следете ги инструкциите
```

### 4. **Firebase Hosting (Бесплатно)**
```bash
# 1. Инсталирајте Firebase CLI
npm install -g firebase-tools

# 2. Иницијализирајте проект
firebase init hosting

# 3. Деплојајте
firebase deploy
```

### 5. **Surge.sh (Најбрзо - Бесплатно)**
```bash
# 1. Инсталирајте Surge
npm install -g surge

# 2. Деплојајте од фолдерот
cd c:\INTERNET_STRANICA
surge --domain roza-kanina.surge.sh
```

## 📱 Мобилно Тестирање

### Chrome DevTools
1. Отворете го сајтот во Chrome
2. Притиснете F12
3. Кликнете на иконата за мобилен уред (Ctrl+Shift+M)
4. Тестирајте различни уреди и резолуции

### Real Device Testing
1. **Android**: Chrome/Brave/Firefox
2. **iOS**: Safari/Chrome
3. **Tablets**: iPad, Android tablets

### PWA Testing
1. Отворете го сајтот на мобилен уред
2. Потражете "Add to Home Screen"
3. Тестирајте офлајн функционалност

## 🔧 Важни Конфигурации

### .htaccess за Apache
```apache
# Enable HTTPS redirect
RewriteEngine On
RewriteCond %{HTTPS} off
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]

# Enable compression
<IfModule mod_deflate.c>
    AddOutputFilterByType DEFLATE text/plain
    AddOutputFilterByType DEFLATE text/html
    AddOutputFilterByType DEFLATE text/xml
    AddOutputFilterByType DEFLATE text/css
    AddOutputFilterByType DEFLATE application/xml
    AddOutputFilterByType DEFLATE application/xhtml+xml
    AddOutputFilterByType DEFLATE application/rss+xml
    AddOutputFilterByType DEFLATE application/javascript
    AddOutputFilterByType DEFLATE application/x-javascript
</IfModule>

# Cache static files
<IfModule mod_expires.c>
    ExpiresActive On
    ExpiresByType image/jpg "access plus 1 year"
    ExpiresByType image/jpeg "access plus 1 year"
    ExpiresByType image/gif "access plus 1 year"
    ExpiresByType image/png "access plus 1 year"
    ExpiresByType text/css "access plus 1 month"
    ExpiresByType application/pdf "access plus 1 month"
    ExpiresByType text/javascript "access plus 1 month"
    ExpiresByType application/javascript "access plus 1 month"
    ExpiresByType application/x-javascript "access plus 1 month"
    ExpiresByType image/x-icon "access plus 1 year"
</IfModule>
```

### Nginx Configuration
```nginx
server {
    listen 80;
    server_name yourdomain.com;
    return 301 https://$server_name$request_uri;
}

server {
    listen 443 ssl;
    server_name yourdomain.com;
    
    root /path/to/roza-kanina;
    index index.html;
    
    # Enable compression
    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript;
    
    # Cache static files
    location ~* \.(jpg|jpeg|png|gif|ico|css|js)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
    
    # PWA support
    location /manifest.json {
        add_header Content-Type application/json;
    }
    
    location /sw.js {
        add_header Content-Type application/javascript;
    }
}
```

## 🌍 SEO Оптимизација

### robots.txt
```
User-agent: *
Allow: /
Sitemap: https://yourdomain.com/sitemap.xml
```

### sitemap.xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
        <loc>https://yourdomain.com/</loc>
        <lastmod>2024-01-01</lastmod>
        <changefreq>weekly</changefreq>
        <priority>1.0</priority>
    </url>
    <url>
        <loc>https://yourdomain.com/#prodavnica</loc>
        <lastmod>2024-01-01</lastmod>
        <changefreq>weekly</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>https://yourdomain.com/#about</loc>
        <lastmod>2024-01-01</lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.7</priority>
    </url>
    <url>
        <loc>https://yourdomain.com/#contact</loc>
        <lastmod>2024-01-01</lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.6</priority>
    </url>
</urlset>
```

## 📊 Performance Testing

### Google PageSpeed Insights
- URL: https://pagespeed.web.dev/
- Тестирајте мобилна и десктоп верзија

### GTmetrix
- URL: https://gtmetrix.com/
- Анализирајте перформанси

### WebPageTest
- URL: https://www.webpagetest.org/
- Детална перформанса анализа

## 🛠️ Тестинг Чеклист

### ✅ Основни Функции
- [ ] Сите страни се вчитуваат
- [ ] Навигацијата работи
- [ ] Мобилни уреди се прикажуваат правилно
- [ ] Таблети се прикажуваат правилно
- [ ] PWA се инсталира

### ✅ Мобилни Функции
- [ ] Touch интеракции работат
- [ ] Swipe gestures работат
- [ ] Language switcher работи
- [ ] Offline мод работи
- [ ] Push notifications работат

### ✅ E-commerce Функции
- [ ] Кошничка работи
- [ ] Checkout процес работи
- [ ] Плаќање работи
- [ ] Админ панел работи
- [ ] Нарачки се зачувуваат

### ✅ SEO и Перформанс
- [ ] Meta tags се правилни
- [ ] Open Graph работи
- [ ] Core Web Vitals се добри
- [ ] Images се оптимизирани
- [ ] Caching работи

## 🚀 Брз Деплојмент со Surge

Најбрз начин за онлајн тестирање:

```bash
# 1. Инсталирајте Surge (ако немате)
npm install -g surge

# 2. Оди во фолдерот
cd c:\INTERNET_STRANICA

# 3. Деплојајте
surge --domain roza-kanina-test.surge.sh
```

Вашиот сајт ќе биде достапен на: https://roza-kanina-test.surge.sh

## 📱 QR Code за Мобилно Тестирање

Кога ќе го деплојате сајтот, креирајте QR code:
- URL: https://your-deployed-url.com
- Скенирајте со мобилен телефон за брзо тестирање

## 🔍 Debugging Tips

### Chrome DevTools
- Console за JavaScript грешки
- Network за HTTP прашања
- Application за PWA и Storage
- Lighthouse за SEO и перформанс

### Mobile Debugging
- Chrome: chrome://inspect
- Safari: Develop > Simulator
- Android: chrome://inspect

Овие инструкции ќе ви овозможат да го поставите сајтот на онлајн сервер и да ги тестирате сите функции на реални уреди!
