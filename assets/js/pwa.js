/**
 * DEFINE service worker
 */
((d, w, n, c) => {
    // Registro Service worker
    if ('serviceWorker' in navigator) {
        window.addEventListener('load', () => {
            navigator.serviceWorker
                .register('./sw.js')
                .then( registration => {
                    // c('service worker registrado con éxito', registration.scope);
                    // c(registration)
                })
                .catch(err => {
                    // c('service worker registrado fallido');
                    c(err)
                })
        })
    } else {
        c('No soporta service worker')
    }
})(document, window, navigator, console.log);
