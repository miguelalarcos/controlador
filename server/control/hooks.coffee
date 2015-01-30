@control.before.insert (userId, doc) ->
  doc.codigo = incrementCounter('controlCounter')