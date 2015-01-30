BasicController = @BasicController
controlId = @controlId = new ReactiveVar(null)
controlSearchDoc = @controlSearchDoc = new ReactiveVar({})
control = @control

class @HomeController extends BasicController
  waitOn: -> Meteor.subscribe 'Controles', controlSearchDoc.get()
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

