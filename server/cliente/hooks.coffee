@cliente.before.insert (userId, doc) ->
  doc.codigo = incrementCounter('clienteCounter')