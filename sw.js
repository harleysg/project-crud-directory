const 
CACHE_NAME = 'pwa-uiRouter-angularJs-directory-cache-v1',
urlsToCache = [
    './',
    './?utm=homescreen',
    './favicon.ico?v=1.0.0.13102018',
    './assets/css/index.css?v=1.0.0.13102018',
    './assets/js/lib/angular.min.js?v=1.0.0.13102018',
    './assets/js/lib/uiRoute.min.js?v=1.0.0.13102018',
    './assets/js/ngApp.js?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_16x16.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_32x32.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_64x64.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_96x96.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_128x128.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_192x192.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_256x256.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_384x384.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_512x512.png?v=1.0.0.13102018',
    './assets/images/launch_icon/icon_1024x1024.png?v=1.0.0.13102018',
    './index.html?v=1.0.0.13102018',
    './index.html?utm=homescreen',
    './components/view.directorio.html?v=1.0.0.13102018',
    './components/view.home.html?v=1.0.0.13102018',
    './components/view.login.html?v=1.0.0.13102018',
    'https://unpkg.com/ionicons@4.4.4/dist/css/ionicons.min.css',
    'http://unpkg.com/@uirouter/visualizer@4',
    '//unpkg.com/@uirouter/visualizer@4'
]

self.addEventListener('install', e => {
    console.log('sw installed');
    e.waitUntil(
        caches
            .open(CACHE_NAME)
            .then(cache => {
                console.log('Archivos en cache');
                return cache.addAll(urlsToCache);
            })
            .then(() => {
                // activate the new service worker immediately, without waiting for next load.
                return self.skipWaiting();
            })
            .catch(err => console.log('Fallo registro de cache: ', err))
    )
})
self.addEventListener('activate', e => {
    console.log('sw actived');
    const cacheWhitelist = [CACHE_NAME]

    e.waitUntil(
        caches
            .keys()
            // Depurar cache si algún archivo ha sido cambiado
            .then(cacheNames => {
                return Promise.all(
                    cacheNames.map(cacheName => {
                        //Eliminamos lo que ya no se necesita en cache
                        if (cacheWhitelist.indexOf(cacheName) === -1)
                            return caches.delete(cacheName)
                    })
                )
            })
            // Actualizar cache
            .then(() => {
                console.log('Updated Cache');
                // Le indica al SW activar el cache actual y estar a la espera de posibles cambios.
                return self.clients.claim()
            })
    )
})
self.addEventListener('fetch', e => {
    console.log('sw recuperando');

    e.respondWith(
        //Miramos si la petición coincide con algún elemento del cache
        caches
            .match(e.request)
            .then(res => {
                if (res) {
                    console.log('Recuperando cache')
                    //Si coincide lo retornamos del cache
                    return res
                }
                //Sino, lo solicitamos a la red
                return fetch(e.request)
            })
    )
})