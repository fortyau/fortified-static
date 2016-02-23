gulp =           require 'gulp'
mainBowerFiles = require 'main-bower-files'
filter =         require 'gulp-filter'
concat =         require 'gulp-concat'

gulp.task 'vendor', ->
  gulp.src(mainBowerFiles())
    .pipe(filter('*.js'))
    .pipe(concat('vendor.js'))
    .pipe(gulp.dest('./dist/scripts/'))
