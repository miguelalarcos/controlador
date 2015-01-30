cliente = @cliente

Meteor.publish 'Clientes', (doc) ->
  if _.isEqual(doc, {}) or (doc.nombre and doc.nombre.length < 3)
    @ready()
  else
    doc.nombre ={$regex: '^.*'+doc.nombre+'.*$', $options: 'i'}
    cliente.find(doc)
