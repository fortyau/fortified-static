gulp =           require 'gulp'
mainBowerFiles = require 'main-bower-files'
concat =         require 'gulp-concat'
uglify =         require 'gulp-uglify'
order =          require 'gulp-order'

gulp.task 'concat-uglify', ['coffee', 'vendor'], ->

  gulp.src('./dist/scripts/**/*.js')
    .pipe order [
      'vendor.js'
      'config.js'
      '**/*.js'
      '*.js'
    ]
    .pipe(concat('script.js'))
    .pipe(uglify())
    .pipe(gulp.dest('./dist/scripts/'))
