gulp =       require('gulp')
awspublish = require('gulp-awspublish')
cloudfront = require('gulp-cloudfront')
clean = require 'gulp-clean'

aws =
  'params':          'Bucket': 'bucketname'
  'accessKeyId':     'accesskey'
  'secretAccessKey': 'secretaccesskey'
  'region':          'us-east-1'

publisher = awspublish.create(aws)
headers =   'Cache-Control': 'max-age=315360000, no-transform, public'

gulp.task 'deploy', ['clean', 'build-for-deployment'], ->

  gulp.src('./deploy/**/*')
    .pipe(awspublish.gzip())
    .pipe(publisher.publish(headers))
    .pipe(publisher.cache())
    .pipe(awspublish.reporter())
  return
