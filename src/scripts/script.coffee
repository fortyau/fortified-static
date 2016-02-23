# Put your functions here...
app:
  onLoad: ()->
    console.info 'Document loaded...'



# Document loaded...
jQuery(document).ready ($) ->
  app.onLoad()
