# 🧪 Комплексен Тестинг План за Роза Канина Веб-сајт

## 📋 Содржина на Тестингот
1. **Навигациски линкови и врски**
2. **AI Асистент модул**
3. **Кошничка и checkout процес**
4. **Текстови и преводи**
5. **Под-врски и интерни конекции**
6. **Мобилна резолуција**
7. **Слики и ресурси**

---

## 🔍 1. Навигациски Линкови и Врски

### ✅ Главна Навигација (Navbar)
| Линк | URL/Function | Статус | Белешки |
|------|-------------|--------|---------|
| 🏠 Роза Канина | `href="#"` | ⏳ | Brand logo - треба да оди на почеток |
| 🌿 Производи | `href="#products"` | ⏳ | Scroll до products секција |
| 🏥 Здравје | `href="#zdravje"` | ⏳ | Scroll до zdravje секција |
| 📝 Блог | `href="#blog"` | ⏳ | Scroll до blog секција |
| 🛍️ Продавница | `href="#prodavnica"` | ⏳ | Scroll до prodavnica секција |
| ℹ️ За нас | `href="#about"` | ⏳ | Scroll до about секција |
| 📞 Контакт | `href="#contact"` | ⏳ | Scroll до contact секција |
| 🤖 AI Асистент | `href="ai-herbal-assistant.html"` | ⏳ | External link |
| 🛒 Онлайн Нарачка | `href="#shop"` | ⏳ | Scroll до shop секција |
| 🛒 Кошничка | `onclick="showCart()"` | ⏳ | JavaScript функција |

### ✅ Hero Banner Линкови
| Линк | Function | Статус | Белешки |
|------|----------|--------|---------|
| 🛒 Погледни Производи | `onclick="scrollToSection('products')"` | ⏳ | JavaScript scroll |
| ℹ️ Дознај Повеќе | `onclick="scrollToSection('about')"` | ⏳ | JavaScript scroll |

### ✅ Product Preview Линкови
| Линк | Function | Статус | Белешки |
|------|----------|--------|---------|
| 🌿 Феми Микс | `onclick="showProductDetail('femi-miks')"` | ⏳ | JavaScript функција |
| 🌿 Хепато Микс | `onclick="showProductDetail('hepato-miks')"` | ⏳ | JavaScript функција |
| 🌿 Фит Микс | `onclick="showProductDetail('fit-miks')"` | ⏳ | JavaScript функција |

---

## 🤖 2. AI Асистент Модул

### ✅ External Link Проверка
- **URL:** `ai-herbal-assistant.html`
- **Status:** ⏳ Треба да се провери дали фајлот постои
- **Function:** Отворање на AI асистент модул

### ✅ AI Асистент Функционалности
| Функција | Опис | Статус | Тест |
|----------|------|--------|------|
| 💬 Chat Interface | AI разговор со корисник | ⏳ | Тестирајте разговор |
| 🌿 Herb Recognition | Препознавање на билки | ⏳ | Тестирајте препознавање |
| 💊 Product Recommendations | Препораки на производи | ⏳ | Тестирајте препораки |
| 📱 Mobile Responsive | Responsive дизајн | ⏳ | Тестирајте на мобилен |

---

## 🛒 3. Кошничка и Checkout Процес

### ✅ Кошничка Функции
| Функција | JavaScript | Статус | Тест |
|----------|------------|--------|------|
| 🛒 showCart() | Прикажи кошничка | ⏳ | Клик на кошничка |
| ➕ addToCart() | Додај производ | ⏳ | Додавање производ |
| ➖ removeFromCart() | Отстрани производ | ⏳ | Отстранување производ |
| 🔄 updateQuantity() | Ажурирање количина | ⏳ | Промена количина |
| 💳 checkout() | Checkout процес | ⏳ | Тестирајте checkout |

### ✅ Checkout Процес
| Чекор | Опис | Статус | Тест |
|------|------|--------|------|
| 📋 Форма | Пополнување податоци | ⏳ | Тестирајте форма |
| 💳 Плаќање | cPay симулација | ⏳ | Тестирајте плаќање |
| 📧 Потврда | Email потврда | ⏳ | Тестирајте потврда |
| 📦 Нарачка | Зачувување нарачка | ⏳ | Тестирајте нарачка |

---

## 🌍 4. Текстови и Преводи

### ✅ Data-Translate Атрибути
| Елемент | data-translate | Македонски | English | Статус |
|---------|---------------|------------|---------|--------|
| 🏠 home | "Дома" | "Home" | ⏳ |
| 🌿 products | "Производи" | "Products" | ⏳ |
| ℹ️ about | "За нас" | "About" | ⏳ |
| 📞 contact | "Контакт" | "Contact" | ⏳ |
| 🤖 ai_assistant | "AI Асистент" | "AI Assistant" | ⏳ |
| 🛒 online_order | "Онлайн Нарачка" | "Online Order" | ⏳ |
| 🛒 view_products | "Погледни Производи" | "View Products" | ⏳ |
| ℹ️ learn_more | "Дознај Повеќе" | "Learn More" | ⏳ |
| 📝 subtitle | "Природни лековити..." | "Natural herbal..." | ⏳ |

### ✅ Language Switcher
| Јазик | Код | Статус | Тест |
|--------|-----|--------|------|
| 🇲🇰 Македонски | mk | ⏳ | Тестирајте MK |
| 🇺🇸 English | en | ⏳ | Тестирајте EN |
| 🇩🇪 Deutsch | de | ⏳ | Тестирајте DE |
| 🇫🇷 Français | fr | ⏳ | Тестирајте FR |
| 🇮🇹 Italiano | it | ⏳ | Тестирајте IT |
| 🇬🇷 Ελληνικά | el | ⏳ | Тестирајте EL |
| 🇧🇬 Български | bg | ⏳ | Тестирајте BG |
| 🇷🇸 Српски | sr | ⏳ | Тестирајте SR |
| 🇹🇷 Türkçe | tr | ⏳ | Тестирајте TR |

---

## 🔗 5. Под-врски и Интерни Конекции

### ✅ Здравје Секција
| Линк | Function | Статус | Тест |
|------|----------|--------|------|
| 🌿 Лековити Билки | `onclick="showZdravjeSection('herbs')"` | ⏳ | Тестирајте |
| 🍽️ Исхрана | `onclick="showZdravjeSection('israna')"` | ⏳ | Тестирајте |
| 📖 Упатства | `onclick="showZdravjeSection('upatstva')"` | ⏳ | Тестирајте |

### ✅ Крвни Групи
| Линк | Function | Статус | Тест |
|------|----------|--------|------|
| 🍽️ Општа Исхрана | `onclick="showBloodGroup('general')"` | ⏳ | Тестирајте |
| 🅰️ Крвна Група А | `onclick="showBloodGroup('A')"` | ⏳ | Тестирајте |
| 🅱️ Крвна Група Б | `onclick="showBloodGroup('B')"` | ⏳ | Тестирајте |
| 🅰️🅱️ Крвна Група АБ | `onclick="showBloodGroup('AB')"` | ⏳ | Тестирајте |
| 🅾️ Крвна Група 0 | `onclick="showBloodGroup('0')"` | ⏳ | Тестирајте |

### ✅ Упатства за Болести
| Линк | Function | Статус | Тест |
|------|----------|--------|------|
| 🌿 Општа Употреба | `onclick="showDiseaseInstructions('general')"` | ⏳ | Тестирајте |
| ❤️ Црнодробни Болести | `onclick="showDiseaseInstructions('liver')"` | ⏳ | Тестирајте |
| 🫘️ Бубрежни Болести | `onclick="showDiseaseInstructions('kidney')"` | ⏳ | Тестирајте |
| ⚖️ Дебелина | `onclick="showDiseaseInstructions('obesity')"` | ⏳ | Тестирајте |
| 👩‍⚕️ Женски Болести | `onclick="showDiseaseInstructions('women')"` | ⏳ | Тестирајте |
| 🎨 Псоријаза | `onclick="showDiseaseInstructions('psoriasis')"` | ⏳ | Тестирајте |
| 🎨 Витилиго | `onclick="showDiseaseInstructions('vitiligo')"` | ⏳ | Тестирајте |
| 🩸 Дијабетес | `onclick="showDiseaseInstructions('diabetes')"` | ⏳ | Тестирајте |
| 🫁 Респираторни Болести | `onclick="showDiseaseInstructions('respiratory')"` | ⏳ | Тестирајте |

---

## 📱 6. Мобилна Резолуција

### ✅ Responsive Breakpoints
| Уред | Резолуција | Статус | Тест |
|------|------------|--------|------|
| 📱 Mobile | < 576px | ⏳ | Тестирајте |
| 📱 Large Mobile | 576px - 768px | ⏳ | Тестирајте |
| 📱 Tablet | 769px - 1024px | ⏳ | Тестирајте |
| 🖥️ Desktop | > 1024px | ⏳ | Тестирајте |

### ✅ Мобилни Функции
| Функција | Опис | Статус | Тест |
|----------|------|--------|------|
| 🍔 Hamburger Menu | Mobile navigation | ⏳ | Тестирајте |
| 👆 Touch Gestures | Swipe и tap | ⏳ | Тестирајте |
| 📐 Responsive Layout | Адаптивен дизајн | ⏳ | Тестирајте |
| 🎨 Mobile UI | Touch-friendly интерфејс | ⏳ | Тестирајте |

---

## 🖼️ 7. Слики и Ресурси

### ✅ Image Проверка
| Слика | Path | Статус | Тест |
|------|------|--------|------|
| 🌿 Коприва | `Sliki/Sliki proizvodi/kopriva.png` | ⏳ | Тестирајте |
| 🌿 Анасон | `Sliki/Sliki proizvodi/anason.png` | ⏳ | Тестирајте |
| 🌿 Врбовка | `Sliki/Sliki proizvodi/vrbovka.png` | ⏳ | Тестирајте |
| 🌿 Жалфија | `Sliki/Sliki proizvodi/zhalfija.png` | ⏳ | Тестирајте |
| 🌿 Феми Микс | `Sliki/Novi sliki od proizvodi za web/femi-miks.png` | ⏳ | Тестирајте |
| 🌿 Хепато Микс | `Sliki/Novi sliki od proizvodi za web/hepato-miks.png` | ⏳ | Тестирајте |
| 🌿 Фит Микс | `Sliki/Novi sliki od proizvodi za web/fit-miks.png` | ⏳ | Тестирајте |
| 🌿 Урино Микс | `Sliki/Novi sliki od proizvodi za web/urino-miks.png` | ⏳ | Тестирајте |

### ✅ External Resources
| Ресурс | URL | Статус | Тест |
|--------|-----|--------|------|
| 🎨 Bootstrap | `https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css` | ⏳ | Тестирајте |
| 🎨 Font Awesome | `https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css` | ⏳ | Тестирајте |
| 🎨 AOS | `https://unpkg.com/aos@2.3.1/dist/aos.css` | ⏳ | Тестирајте |
| 📄 Manifest | `manifest.json` | ⏳ | Тестирајте |
| 🤖 Service Worker | `sw.js` | ⏳ | Тестирајте |

---

## 🧪 Тестинг Procedure

### **Чекор 1: Основна Проверка**
1. ✅ Отворете го `index.html` во браузер
2. ✅ Проверете дали сите CSS се вчитуваат
3. ✅ Проверете дали JavaScript работи
4. ✅ Проверете конзола за грешки

### **Чекор 2: Навигација Тест**
1. ✅ Кликнете на сите navbar линкови
2. ✅ Тестирајте scroll функционалност
3. ✅ Тестирајте AI асистент линк
4. ✅ Тестирајте кошничка копче

### **Чекор 3: Hero Banner Тест**
1. ✅ Тестирајте CTA копчиња
2. ✅ Тестирајте product preview
3. ✅ Тестирајте tea ceremony
4. ✅ Тестирајте statistics анимации

### **Чекор 4: Содржина Тест**
1. ✅ Тестирајте zdravje секција
2. ✅ Тестирајте крвни групи
3. ✅ Тестирајте упатства за болести
4. ✅ Тестирајте производи

### **Чекор 5: E-commerce Тест**
1. ✅ Додајте производ во кошничка
2. ✅ Тестирајте checkout процес
3. ✅ Тестирајте плаќање
4. ✅ Тестирајте нарачка

### **Чекор 6: Мобилен Тест**
1. ✅ Тестирајте на мобилен уред
2. ✅ Тестирајте responsive дизајн
3. ✅ Тестирајте touch интеракции
4. ✅ Тестирајте PWA функционалности

### **Чекор 7: Language Тест**
1. ✅ Тестирајте сите јазици
2. ✅ Тестирајте преводи
3. ✅ Тестирајте language switcher
4. ✅ Тестирајте persistence

---

## 📊 Тестинг Результати

### ✅ Пасни Тестови
- [ ] Основно вчитување на сајтот
- [ ] CSS стилови се вчитуваат
- [ ] JavaScript работи без грешки
- [ ] Навигација функционира
- [ ] Hero banner анимации
- [ ] Responsive дизајн

### ❌ Неуспешни Тестови
- [ ] AI асистент модул
- [ ] Кошничка функционалности
- [ ] Checkout процес
- [ ] Language switcher
- [ ] PWA функционалности

### ⚠️ Проблеми за Решавање
- [ ] Missing AI assistant file
- [ ] Broken image paths
- [ ] Non-functional JavaScript
- [ ] Translation errors
- [ ] Mobile layout issues

---

## 🚀 Следни Чекори

1. **Поправете ги сите пронајдени проблеми**
2. **Тестирајте ги поправките**
3. **Деплојајте на онлајн сервер**
4. **Тестирајте на реални уреди**
5. **Направете финална проверка**

---

## 📞 Контакт за Поддршка

Ако наидете на проблеми:
- Проверете конзола за JavaScript грешки
- Проверете Network таб за missing resources
- Проверете HTML валидност
- Контактирајте за техничка помош

**🎯 Цел: 100% функционален веб-сајт пред деплојмент!**
