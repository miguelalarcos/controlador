control = @control
cliente = @cliente

Meteor.publishComposite 'Controles', (doc) ->
  if _.isEqual(doc, {})
    #@ready()
    return {find: ->}
  else
    delete doc.observaciones
    delete doc.clienteName
    console.log doc

    find: -> control.find(doc)
    children: [
      find: (cont) ->
        cliente.find cont.cliente
      ]