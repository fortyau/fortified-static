gulp = require 'gulp'

gulp.task 'compile', [
  'jade'
  'sass'
  'coffee'
  'vendor'
  'concat-uglify'
  'imagemin'
]
