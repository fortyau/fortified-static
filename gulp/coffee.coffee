gulp =   require 'gulp'
coffee = require 'gulp-coffee'
gutil =  require 'gutil'
concat = require 'gulp-concat'

gulp.task 'coffee', ->

  gulp.src('./src/**/*.coffee')
    .pipe(coffee(
      bare: true
    ).on('error', gutil.log))
    .pipe(gulp.dest('./dist/'))

  return
