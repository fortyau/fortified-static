gulp = require 'gulp'
RevAll = require 'gulp-rev-all'

gulp.task 'build-for-deployment', ['compile', 'cleanup'], ->
  revAll = new RevAll(
    dontUpdateReference:[
      '.html'
      'index.html'
      'images/social/*.*'
    ]
    dontRenameFile: [
      '.html'
      'index.html'
      'images/social/*.*'
    ]
  )
  gulp.src('dist/**')
      .pipe(revAll.revision())
      .pipe(gulp.dest('./deploy/'))
