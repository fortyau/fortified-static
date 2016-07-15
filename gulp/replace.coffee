gulp =    require 'gulp'
replace = require('gulp-replace-task')


gulp.task 'replace', ->
  gulp.src('./dist/*.html').pipe(replace(
    variables:
      ytVideoID:    ''
      googleUACode: ''

      appURL:         ''
      appTitle:       ''
      appDescription: ''

      # Twitter
      publisherHandle: ''
      pageDescription: ''
      authorHandle:    ''

      # Facebook
      fbTitle:       ''
      fbType:        ''
      fbDescription: ''
      fbSiteName:    ''
      fbAdminIDs:    ''

      # Misc
      authorName:  ''
      appKeywords: ''

      # Social Links
      fbLink:       ''
      twitterLink:  ''
      instaLink:    ''
      snapchatLink: ''
      ytLink:       ''
      vevoLink:     ''
    )
  ).pipe gulp.dest('./dist/')
  return
