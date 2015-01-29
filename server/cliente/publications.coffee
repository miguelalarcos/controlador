cliente = @cliente

Meteor.publish 'Clientes', (doc) ->
  if doc.nombre is undefined
    @ready()
  else
    cliente.find(doc)
