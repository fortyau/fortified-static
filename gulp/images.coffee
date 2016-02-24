gulp =     require 'gulp'
imagemin = require 'gulp-imagemin'
pngquant = require 'imagemin-pngquant'

gulp.task 'imagemin', ->
  gulp.src('src/images/*')
    .pipe(imagemin(
      progressive: true,
      svgoPlugins: [{removeViewBox: false}],
      use: [pngquant()]
    ))
    .pipe(gulp.dest('dist/images'))
