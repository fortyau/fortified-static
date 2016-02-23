gulp = require 'gulp'

gulp.task 'compile', [
  'jade'
  'sass'
  'coffee'
  'wiredep'
]
