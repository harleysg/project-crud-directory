var
        gulp ,webserver ,sass ,path ,pug ,errorNotifier 
    ,   desarrollo    = "_dev"
;

gulp = require('gulp');
webserver = require('gulp-webserver');
sass = require('gulp-sass');
path = require('path');
pug = require('gulp-pug');
errorNotifier = require('gulp-error-notifier');

/* ======================================
Configuración de Sass ↓↓↓↓↓
====================================== */
    // ------------------------------------- 
    // ----------------------------------------- GENERAL
    gulp.task('sass', function () {
        return gulp.src( './'+desarrollo+'/sass/index.scss' )
        .pipe(sass.sync().on('error', sass.logError))
        //Destino
        .pipe(gulp.dest('./assets/css/'));
    });
