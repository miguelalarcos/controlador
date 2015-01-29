cliente = @cliente
@clienteId = clienteId = new ReactiveVar(null)
@clienteSearchDoc = clienteSearchDoc = new ReactiveVar({})
LoginController = @LoginController

class @ClienteController extends LoginController
  waitOn: -> Meteor.subscribe 'Clientes', clienteSearchDoc.get()
  data: ->
    if clienteId.get() is null
      nombre: ''
    else
      cliente.findOne(clienteId.get())

