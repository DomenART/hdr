const gulp = require('gulp');
const watch = require('gulp-watch');
const imagemin = require('gulp-imagemin');
const pngquant = require('imagemin-pngquant');
const sourcemaps = require('gulp-sourcemaps');
const rigger = require('gulp-rigger');
const less = require('gulp-less');
const autoprefixer = require('gulp-autoprefixer');
const cleanCSS = require('gulp-clean-css');
const uglify = require('gulp-uglify');
const compress = require('gulp-compress');
const babel = require('gulp-babel');
const chmod = require('gulp-chmod');

var path = {
    build: { //Тут мы укажем куда складывать готовые после сборки файлы
        js: 'public/assets/template/js/',
        css: 'public/assets/template/css/',
        img: 'public/assets/template/img',
        fonts: 'public/assets/template/fonts/'
    },
    src: { //Пути откуда брать исходники
        js: 'src/js/main.js',//В стилях и скриптах нам понадобятся только main файлы
        less: 'src/less/main.less',
        img: 'src/img/**/*.*', //Синтаксис img/**/*.* означает - взять все файлы всех расширений из папки и из вложенных каталогов
        fonts: [
            'src/fonts/**/*.*',
            // 'node_modules/font-awesome/fonts/**/*.*'
        ]
    },
    watch: { //Тут мы укажем, за изменением каких файлов мы хотим наблюдать
        js: 'src/js/**/*.js',
        less: 'src/less/**/*.less',
        img: 'src/img/**/*.*',
        fonts: 'src/fonts/**/*.*'
    }
};

gulp.task('js:build', function () {
    gulp.src(path.src.js)
        .pipe(babel({
            presets: ['env']
        }))
        .pipe(rigger())
        .pipe(sourcemaps.init())
        .pipe(uglify())
        .pipe(sourcemaps.write())
        .pipe(chmod(0o755))
        .pipe(gulp.dest(path.build.js));
});

gulp.task('less:build', function () {
    gulp.src(path.src.less)
        .pipe(sourcemaps.init())
        .pipe(less())
        .pipe(autoprefixer())
        .pipe(cleanCSS())
        .pipe(sourcemaps.write())
        .pipe(chmod(0o755))
        .pipe(gulp.dest(path.build.css));
});

gulp.task('image:build', function () {
    gulp.src(path.src.img) //Выберем наши картинки
        .pipe(imagemin({ //Сожмем их
            progressive: true,
            svgoPlugins: [{removeViewBox: false}],
            use: [pngquant()],
            interlaced: true
        }))
        .pipe(chmod(0o755))
        .pipe(gulp.dest(path.build.img));
});

gulp.task('fonts:build', function() {
    gulp.src(path.src.fonts)
        .pipe(chmod(0o755))
        .pipe(gulp.dest(path.build.fonts))
});

gulp.task('build', [
    'js:build',
    'less:build',
    'fonts:build',
    'image:build'
]);

gulp.task('watch', function(){
    watch([path.watch.less], function(event, cb) {
        gulp.start('less:build');
    });
    watch([path.watch.js], function(event, cb) {
        gulp.start('js:build');
    });
    watch([path.watch.img], function(event, cb) {
        gulp.start('image:build');
    });
    watch([path.watch.fonts], function(event, cb) {
        gulp.start('fonts:build');
    });
});

gulp.task('default', ['build', 'watch']);
