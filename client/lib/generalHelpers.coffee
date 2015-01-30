UI.registerHelper 'formatDate', (date) ->
  moment(date).format('DD-MM-YYYY HH:mm')