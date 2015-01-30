control = @control
cliente = @cliente

Meteor.publishComposite 'Controles', (doc) ->
  if _.isEqual(doc, {})
    #@ready()
    return {find: ->}
  else
    if doc.cliente and doc.cliente.length > 2
      doc.cliente ={$regex: '^.*'+doc.cliente+'.*$', $options: 'i'}
    else
      delete doc.nombre
    delete doc.observaciones

    find: -> control.find(doc)
    children: [
      find: (cont) ->
        cliente.find cont.cliente
      ]