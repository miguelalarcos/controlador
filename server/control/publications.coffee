control = @control
cliente = @cliente

Meteor.publishComposite 'Controles', (doc) ->
  if _.isEqual(doc, {}) or doc is null
    return {find: ->}
  else
    delete doc.observaciones
    delete doc.clienteName

    find: -> control.find(doc)
    children: [
      find: (cont) ->
        cliente.find cont.cliente
      ]

Meteor.publishComposite 'ControlesEntreFechas', (doc)->
  if _.isEqual(doc, {}) or doc is null
    return {find: ->}
  else
    doc = {fecha: {$gte: doc.fecha_ini, $lte: doc.fecha_fin}}
    find: -> control.find(doc)
    children: [
      find: (cont) ->
        cliente.find cont.cliente
    ]