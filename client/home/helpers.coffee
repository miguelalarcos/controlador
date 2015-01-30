controlId = @controlId
control = @control
controlSearchDoc = @controlSearchDoc

Template.control.helpers
  controles: -> control.find()
  criterio_busqueda_controles: -> controlSearchDoc.get()

