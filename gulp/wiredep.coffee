gulp = require 'gulp'
jade = require 'gulp-jade'
wiredep = require('wiredep').stream

gulp.task 'wiredep', ->
  gulp.src('./src/**/*.jade')
    .pipe(
      wiredep(
        directory: './bower_components'
      )
    ).pipe(gulp.dest('./dist'))
# YOUR_LOCALS = {}
# gulp.task 'wiredep', ->
#   gulp.src('./src/**/*.jade').pipe(
#     jade(
#       pretty: false
#     )).pipe(
#       wiredep(
#         directory: './bower_components'
#         bowerJson: require('../bower.json')
#       )
#     ).pipe gulp.dest('./dist')
