gulp =  require 'gulp'
clean = require 'gulp-clean'

gulp.task 'cleanup', ['compile'], ->

  # Clean up .js
  gulp.src([
    './dist/scripts/**/*.js'
    './dist/scripts/*.js'
    '!./dist/scripts/script.js'
  ])
  .pipe(clean())
