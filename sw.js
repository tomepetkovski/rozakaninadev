// Service Worker for PWA functionality
const CACHE_NAME = 'roza-kanina-v1';
const urlsToCache = [
    '/',
    '/index.html',
    '/manifest.json',
    'https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css',
    'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css',
    'https://unpkg.com/aos@2.3.1/dist/aos.css',
    'https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js'
];

// Install Service Worker
self.addEventListener('install', event => {
    event.waitUntil(
        caches.open(CACHE_NAME)
            .then(cache => {
                return cache.addAll(urlsToCache);
            })
            .then(() => {
                self.skipWaiting();
            })
    );
});

// Activate Service Worker
self.addEventListener('activate', event => {
    event.waitUntil(
        caches.keys().then(cacheNames => {
            return Promise.all(
                cacheNames.map(cacheName => {
                    if (cacheName !== CACHE_NAME) {
                        return caches.delete(cacheName);
                    }
                })
            );
        }).then(() => {
            self.clients.claim();
        })
    );
});

// Fetch Event - Network First Strategy
self.addEventListener('fetch', event => {
    event.respondWith(
        caches.open(CACHE_NAME)
            .then(cache => {
                return cache.match(event.request)
                    .then(response => {
                        // Return cached version if available
                        if (response) {
                            return response;
                        }
                        
                        // Otherwise fetch from network
                        return fetch(event.request)
                            .then(response => {
                                // Cache successful responses
                                if (response.status === 200) {
                                    cache.put(event.request, response.clone());
                                }
                                return response;
                            })
                            .catch(() => {
                                // Return cached version if network fails
                                return cache.match(event.request);
                            });
                    });
            })
    );
});

// Background Sync for Offline Support
self.addEventListener('sync', event => {
    if (event.tag === 'background-sync-orders') {
        event.waitUntil(syncOrders());
    }
});

// Push Notifications
self.addEventListener('push', event => {
    const options = {
        body: event.data.text,
        icon: '/Sliki/main-img-1.png',
        badge: '/Sliki/main-img-1.png',
        vibrate: [100, 50, 100],
        data: event.data
    };
    
    event.waitUntil(
        self.registration.showNotification(event.data.title, options)
    );
});

// Sync Orders Function
function syncOrders() {
    return caches.open(CACHE_NAME)
        .then(cache => {
            return cache.match('/api/orders');
        })
        .then(response => {
            if (response) {
                return response.json();
            }
            return [];
        })
        .then(orders => {
            // Sync with server when online
            return fetch('/api/sync-orders', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ orders })
            });
        })
        .then(response => response.json())
        .then(() => {
            // Clear synced orders
            return caches.open(CACHE_NAME)
                .then(cache => {
                    return cache.delete('/api/orders');
                });
        });
}
