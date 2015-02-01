BasicController = @BasicController
controlId = @controlId = new ReactiveVar(null)
controlSearchDoc = @controlSearchDoc = new ReactiveVar({})
control = @control
entreFechas = @entreFechas = new ReactiveVar()

class @HomeController extends BasicController
  waitOn: -> [Meteor.subscribe('Controles', controlSearchDoc.get()), Meteor.subscribe('ControlesEntreFechas', entreFechas.get())]
  data: ->
    _id = controlId.get()
    if _id is null
      return {
      _id: null
      codigo: ''
      cliente: ''
      fecha: ''
      observaciones: ''
      }
    else
      control.findOne(_id)

