clienteSearchDoc = @clienteSearchDoc
cliente = @cliente
clienteId = @clienteId

Template.cliente.events
  'click #saveClienteForm': (e, t)->
    if clienteId.get() is null
      doc = AutoForm.getFormValues('saveSearchClienteForm').insertDoc
      _id = cliente.insert doc
      clienteId.set _id
    else
      doc = AutoForm.getFormValues('saveSearchClienteForm').updateDoc
      _id = clienteId.get()
      cliente.update _id, doc
    false
  'click #searchClienteForm': (e,t) ->
    docI = AutoForm.getFormValues('saveSearchClienteForm').insertDoc
    clienteSearchDoc.set docI
    console.log docI
    false
