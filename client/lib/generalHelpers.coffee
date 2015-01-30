UI.registerHelper 'formatDate', (date) ->
  if date
    moment(date).format('DD-MM-YYYY HH:mm')
  else
    null