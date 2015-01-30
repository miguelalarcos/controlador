cliente = @cliente
@clienteId = clienteId = new ReactiveVar(null)
@clienteSearchDoc = clienteSearchDoc = new ReactiveVar({})
LoginController = @LoginController

class @ClienteController extends LoginController
  waitOn: -> Meteor.subscribe 'Clientes', clienteSearchDoc.get()
  data: ->
    _id = clienteId.get()
    if _id is null
      return {
      _id: null
      nombre: ''
      telefono: ''
      direccion: ''
      provincia: ''
      }
    else
      cliente.findOne(_id)

