gulp = require 'gulp'
jade = require 'gulp-jade'

gulp.task 'jade', () ->
  gulp.src('./src/**/*.jade')
    .pipe(jade(
      locals: {}
    ))
    .pipe(gulp.dest('./dist/'))
