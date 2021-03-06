gulp =        require 'gulp'
requireDir =  require 'require-dir'
runSequence = require 'run-sequence'

requireDir './gulp'

watchAndRecompile = () ->
  gulp.watch ['./src/**/*', './src/images/**/*'], [
      'compile'
      'cleanup'
    ]

gulp.task 'watch-all', () ->
	watchAndRecompile()

gulp.task 'watch-compile-build', runSequence('clean', 'compile', 'cleanup', 'serve', 'watch-all')
gulp.task 'watch-compile', ['build'], watchAndRecompile
gulp.task 'default', ['watch-compile-build']
