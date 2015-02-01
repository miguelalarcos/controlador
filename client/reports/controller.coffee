controlId = @controlId

class @ReportController extends BasicController
  waitOn: ->
    console.log controlId.get()
    Meteor.subscribe 'Controles', controlId.get()
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