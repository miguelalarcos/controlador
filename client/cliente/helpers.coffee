cliente = @cliente

Template.cliente.helpers
  clientes: -> cliente.find()