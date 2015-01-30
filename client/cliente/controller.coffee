cliente = @cliente
@clienteId = clienteId = new ReactiveVar(null)
@clienteSearchDoc = clienteSearchDoc = new ReactiveVar({})
BasicController = @BasicController

class @ClienteController extends BasicController
  waitOn: -> Meteor.subscribe 'Clientes', clienteSearchDoc.get()
  data: ->
    _id = clienteId.get()
    if _id is null
      return {
      _id: null
      codigo: ''
      nombre: ''
      telefono: ''
      direccion: ''
      provincia: ''
      }
    else
      cliente.findOne(_id)

