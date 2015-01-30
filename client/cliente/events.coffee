clienteSearchDoc = @clienteSearchDoc
cliente = @cliente
clienteId = @clienteId

Template.cliente.events
  'click .eliminar-cliente': (e,t)->
    _id = $(e.target).attr('_id')
    cliente.remove _id
  'click #clearForm': (e,t)->
    clienteId.set ''
    clienteId.set null
    false
  'click #saveClienteForm': (e, t)->
    if clienteId.get() is null
      if AutoForm.validateForm('saveSearchClienteForm')
        doc = AutoForm.getFormValues('saveSearchClienteForm').insertDoc
        _id = cliente.insert doc
        clienteId.set _id
        clienteSearchDoc.set doc
    else
      if AutoForm.validateForm('saveSearchClienteForm')
        doc = AutoForm.getFormValues('saveSearchClienteForm').updateDoc
        _id = clienteId.get()
        cliente.update({_id: _id}, doc)
        clienteSearchDoc.set AutoForm.getFormValues('saveSearchClienteForm').insertDoc
    false
  'click #searchClienteForm': (e,t) ->
    docI = AutoForm.getFormValues('saveSearchClienteForm').insertDoc
    clienteSearchDoc.set docI
    false
  'click .to-edit': (e,t)->
    clienteId.set $(e.target).attr('_id')
