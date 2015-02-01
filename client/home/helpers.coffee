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
    doc
  fechaActual: ->
    fecha_ini: null#new Date()
    fecha_fin: null#new Date()

