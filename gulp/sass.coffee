autoprefixer = require 'gulp-autoprefixer'
gulp =         require 'gulp'
sass =         require 'gulp-sass'

gulp.task 'sass', () ->
	return gulp.src('./src/**/*.sass')
		.pipe(sass())
		.pipe(autoprefixer())
		.pipe(gulp.dest('./dist'))
