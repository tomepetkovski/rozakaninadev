// Multilingual Support System for Roza Kanina
class MultilingualSupport {
    constructor() {
        this.currentLanguage = 'mk'; // Default Macedonian
        this.supportedLanguages = {
            'mk': {
                name: 'Македонски',
                flag: '🇲🇰',
                rtl: false
            },
            'en': {
                name: 'English',
                flag: '🇬🇧',
                rtl: false
            },
            'sq': {
                name: 'Shqip',
                flag: '🇦🇱',
                rtl: false
            },
            'sr': {
                name: 'Српски',
                flag: '🇷🇸',
                rtl: false
            },
            'bg': {
                name: 'Български',
                flag: '🇧🇬',
                rtl: false
            },
            'tr': {
                name: 'Türkçe',
                flag: '🇹🇷',
                rtl: false
            },
            'de': {
                name: 'Deutsch',
                flag: '🇩🇪',
                rtl: false
            },
            'fr': {
                name: 'Français',
                flag: '🇫🇷',
                rtl: false
            }
        };
        
        this.translations = {
            mk: {
                // Navigation
                'home': 'Почетна',
                'products': 'Производи',
                'about': 'За нас',
                'contact': 'Контакт',
                'ai_assistant': 'AI Асистент',
                'online_order': 'Онлайн Нарачка',
                
                // Hero Section
                'welcome': 'Добредојдовте во Роза Канина',
                'subtitle': 'Природни лековити производи за вашето здравје и благосостојба',
                'view_products': 'Погледни Производи',
                'learn_more': 'Дознај Повеќе',
                
                // AI Assistant
                'ai_assistant_title': 'AI Билен Асистент - Роза Канина',
                'ai_assistant_subtitle': 'Добредојдовте! Јас сум вашиот личен билен советник. Кажете ми ги вашите симптоми и ќе ви препорачам најсоодветни производи.',
                'common_symptoms': 'Чести симптоми',
                'digestive_problems': 'Дигестивни проблеми',
                'stress_anxiety': 'Стрес и анксиозност',
                'sleep_problems': 'Проблеми со спиење',
                'muscle_joint_pain': 'Болки во мускулите и зглобовите',
                'skin_problems': 'Кожни проблеми',
                'heart_problems': 'Проблеми со срцето',
                'edema_retention': 'Отоци и задржување',
                'weak_immunity': 'Слаб имунитет',
                'infections': 'Инфекции',
                'breathing_problems': 'Проблеми со дишење',
                'type_symptoms': 'Опишете ги вашите симптоми или прашајте за производ...',
                'send': 'Испрати',
                'ai_writing': 'AI асистентот пишува...',
                
                // Stats
                'natural_products': 'Природни Производи',
                'satisfied_customers': 'Задоволни Клиенти',
                'years_experience': 'Години Искуство',
                'fast_delivery': 'Брза Достава',
                
                // Product Categories
                'herbal_mixes': 'Билни Мешавини',
                'single_herbs': 'Поединечни Билки',
                'oils_extracts': 'Масла и Екстракти',
                
                // Contact
                'address': 'Адреса',
                'phone': 'Тобелефон',
                'email': 'Е-пошта',
                'working_hours': 'Работно Време',
                'monday_friday': 'Понеделник - Петок',
                'saturday': 'Сабота',
                'sunday': 'Недела',
                'closed': 'Затворено',
                'order_phone': 'Телефон за нарачки',
                
                // Footer
                'quick_links': 'Брзи врски',
                'legal_info': 'Правни информации',
                'terms_conditions': 'Услови за користење',
                'privacy_policy': 'Политика на приватност',
                'shipping_info': 'Правци на испорака',
                'warranties': 'Гаранции',
                'all_rights_reserved': 'Сите права се задржани',
                'developed_with': 'Разработено со',
                
                // Common
                'price': 'Цена',
                'more': 'Повеќе',
                'new': 'НОВО',
                'popular': 'ПОПУЛАРНО',
                'exclusive': 'ЕКСКЛУЗИВНО',
                'recommended_products': 'Препорачани производи',
                'why_these_products': 'Зошто овие производи?',
                'important': 'Важно',
                'consult_doctor': 'Секогаш консултирајте со лекар пред употреба, особено ако имате хронични состојби или земате други лекови.',
                'usage': 'Начин на употреба'
            },
            en: {
                // Navigation
                'home': 'Home',
                'products': 'Products',
                'about': 'About',
                'contact': 'Contact',
                'ai_assistant': 'AI Assistant',
                'online_order': 'Online Order',
                
                // Hero Section
                'welcome': 'Welcome to Roza Kanina',
                'subtitle': 'Natural herbal products for your health and wellbeing',
                'view_products': 'View Products',
                'learn_more': 'Learn More',
                
                // AI Assistant
                'ai_assistant_title': 'AI Herbal Assistant - Roza Kanina',
                'ai_assistant_subtitle': 'Welcome! I am your personal herbal advisor. Tell me your symptoms and I will recommend the most suitable products.',
                'common_symptoms': 'Common Symptoms',
                'digestive_problems': 'Digestive Problems',
                'stress_anxiety': 'Stress and Anxiety',
                'sleep_problems': 'Sleep Problems',
                'muscle_joint_pain': 'Muscle and Joint Pain',
                'skin_problems': 'Skin Problems',
                'heart_problems': 'Heart Problems',
                'edema_retention': 'Edema and Retention',
                'weak_immunity': 'Weak Immunity',
                'infections': 'Infections',
                'breathing_problems': 'Breathing Problems',
                'type_symptoms': 'Describe your symptoms or ask about products...',
                'send': 'Send',
                'ai_writing': 'AI assistant is typing...',
                
                // Stats
                'natural_products': 'Natural Products',
                'satisfied_customers': 'Satisfied Customers',
                'years_experience': 'Years Experience',
                'fast_delivery': 'Fast Delivery',
                
                // Product Categories
                'herbal_mixes': 'Herbal Mixes',
                'single_herbs': 'Single Herbs',
                'oils_extracts': 'Oils and Extracts',
                
                // Contact
                'address': 'Address',
                'phone': 'Phone',
                'email': 'Email',
                'working_hours': 'Working Hours',
                'monday_friday': 'Monday - Friday',
                'saturday': 'Saturday',
                'sunday': 'Sunday',
                'closed': 'Closed',
                'order_phone': 'Order Phone',
                
                // Footer
                'quick_links': 'Quick Links',
                'legal_info': 'Legal Information',
                'terms_conditions': 'Terms & Conditions',
                'privacy_policy': 'Privacy Policy',
                'shipping_info': 'Shipping Info',
                'warranties': 'Warranties',
                'all_rights_reserved': 'All Rights Reserved',
                'developed_with': 'Developed with',
                
                // Common
                'price': 'Price',
                'more': 'More',
                'new': 'NEW',
                'popular': 'POPULAR',
                'exclusive': 'EXCLUSIVE',
                'recommended_products': 'Recommended Products',
                'why_these_products': 'Why these products?',
                'important': 'Important',
                'consult_doctor': 'Always consult with a doctor before use, especially if you have chronic conditions or take other medications.',
                'usage': 'Usage'
            }
        };
        
        this.init();
    }
    
    init() {
        this.detectUserLanguage();
        this.createLanguageSelector();
        this.translatePage();
    }
    
    detectUserLanguage() {
        // Detect from browser language
        const browserLang = navigator.language.split('-')[0];
        
        // Detect from timezone (approximate region detection)
        const timezone = Intl.DateTimeFormat().resolvedOptions().timeZone;
        const regionMap = {
            'Europe/Skopje': 'mk',
            'Europe/Tirane': 'sq',
            'Europe/Belgrade': 'sr',
            'Europe/Sofia': 'bg',
            'Europe/Istanbul': 'tr',
            'Europe/Berlin': 'de',
            'Europe/Paris': 'fr'
        };
        
        // Set language based on detection
        if (regionMap[timezone]) {
            this.currentLanguage = regionMap[timezone];
        } else if (this.supportedLanguages[browserLang]) {
            this.currentLanguage = browserLang;
        }
        
        // Save preference
        localStorage.setItem('preferredLanguage', this.currentLanguage);
    }
    
    createLanguageSelector() {
        const selector = document.createElement('div');
        selector.className = 'language-selector';
        selector.innerHTML = `
            <div class="dropdown">
                <button class="btn btn-sm btn-outline-secondary dropdown-toggle" type="button" id="languageDropdown" data-bs-toggle="dropdown">
                    <span class="flag">${this.supportedLanguages[this.currentLanguage].flag}</span>
                    <span class="lang-name">${this.supportedLanguages[this.currentLanguage].name}</span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="languageDropdown">
                    ${Object.entries(this.supportedLanguages).map(([code, info]) => `
                        <li><a class="dropdown-item ${code === this.currentLanguage ? 'active' : ''}" href="#" data-lang="${code}">
                            <span class="flag">${info.flag}</span>
                            <span class="lang-name">${info.name}</span>
                        </a></li>
                    `).join('')}
                </ul>
            </div>
        `;
        
        // Add styles
        const style = document.createElement('style');
        style.textContent = `
            .language-selector {
                position: fixed;
                top: 20px;
                right: 20px;
                z-index: 1000;
            }
            .language-selector .flag {
                margin-right: 8px;
                font-size: 1.2em;
            }
            .language-selector .dropdown-item.active {
                background-color: var(--primary-color);
                color: white;
            }
            .language-selector .dropdown-menu {
                min-width: 150px;
            }
        `;
        document.head.appendChild(style);
        
        // Add to body
        document.body.appendChild(selector);
        
        // Add event listeners
        selector.querySelectorAll('.dropdown-item').forEach(item => {
            item.addEventListener('click', (e) => {
                e.preventDefault();
                this.changeLanguage(item.dataset.lang);
            });
        });
    }
    
    changeLanguage(langCode) {
        if (!this.supportedLanguages[langCode]) return;
        
        this.currentLanguage = langCode;
        localStorage.setItem('preferredLanguage', langCode);
        
        // Update selector
        const dropdown = document.querySelector('#languageDropdown');
        if (dropdown) {
            dropdown.innerHTML = `
                <span class="flag">${this.supportedLanguages[langCode].flag}</span>
                <span class="lang-name">${this.supportedLanguages[langCode].name}</span>
            `;
        }
        
        // Update active item
        document.querySelectorAll('.dropdown-item').forEach(item => {
            item.classList.toggle('active', item.dataset.lang === langCode);
        });
        
        // Translate page
        this.translatePage();
        
        // Update HTML lang attribute
        document.documentElement.lang = langCode;
        
        // Update text direction if needed
        document.dir = this.supportedLanguages[langCode].rtl ? 'rtl' : 'ltr';
    }
    
    translate(key) {
        return this.translations[this.currentLanguage]?.[key] || 
               this.translations['en']?.[key] || 
               key;
    }
    
    translatePage() {
        // Translate elements with data-translate attribute
        document.querySelectorAll('[data-translate]').forEach(element => {
            const key = element.dataset.translate;
            const translation = this.translate(key);
            
            if (element.tagName === 'INPUT' || element.tagName === 'TEXTAREA') {
                element.placeholder = translation;
            } else {
                element.textContent = translation;
            }
        });
        
        // Translate AI assistant if on that page
        if (window.location.pathname.includes('ai-herbal-assistant')) {
            this.translateAIAssistant();
        }
    }
    
    translateAIAssistant() {
        // Update AI assistant specific elements
        const elements = {
            '.chat-header h2': 'ai_assistant_title',
            '.chat-header p': 'ai_assistant_subtitle',
            '.quick-symptoms h5': 'common_symptoms',
            '#userInput': 'type_symptoms',
            '.typing-indicator': 'ai_writing'
        };
        
        Object.entries(elements).forEach(([selector, key]) => {
            const element = document.querySelector(selector);
            if (element) {
                const translation = this.translate(key);
                if (element.tagName === 'INPUT') {
                    element.placeholder = translation;
                } else {
                    element.textContent = translation;
                }
            }
        });
        
        // Translate symptom buttons
        const symptomTranslations = {
            'Дигестивни проблеми': 'digestive_problems',
            'Стрес и анксиозност': 'stress_anxiety',
            'Проблеми со спиење': 'sleep_problems',
            'Болки во мускулите и зглобовите': 'muscle_joint_pain',
            'Кожни проблеми': 'skin_problems',
            'Проблеми со срцето': 'heart_problems',
            'Отоци и задржување': 'edema_retention',
            'Слаб имунитет': 'weak_immunity',
            'Инфекции': 'infections',
            'Проблеми со дишење': 'breathing_problems'
        };
        
        document.querySelectorAll('.symptom-btn').forEach(btn => {
            const originalText = btn.textContent.trim();
            const key = symptomTranslations[originalText];
            if (key) {
                const translation = this.translate(key);
                const icon = btn.querySelector('i').outerHTML;
                btn.innerHTML = `${icon} ${translation}`;
            }
        });
    }
    
    getCurrentLanguage() {
        return this.currentLanguage;
    }
    
    getSupportedLanguages() {
        return this.supportedLanguages;
    }
}

// Initialize when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
    window.multilingualSupport = new MultilingualSupport();
});
