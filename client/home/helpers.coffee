controlId = @controlId
control = @control
controlSearchDoc = @controlSearchDoc

Template.control.helpers
  controles: -> control.find()
  criterio_busqueda_controles: ->
    doc = controlSearchDoc.get()
    item = cliente.findOne(doc.cliente)
    if item
      doc.clienteName = item.nombre
    console.log doc
    doc

