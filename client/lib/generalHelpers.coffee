UI.registerHelper 'formatDate', (date) ->
  if date
    m= moment(date)
    if m.hour() == 0 and m.minute() == 0
      m.format('DD-MM-YYYY')
    else
      m.format('DD-MM-YYYY HH:mm')
  else
    null