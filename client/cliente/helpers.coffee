clienteId = @clienteId
cliente = @cliente
clienteSearchDoc = @clienteSearchDoc

Template.cliente.helpers
  clientes: -> cliente.find()
  criterio_busqueda: -> clienteSearchDoc.get()
