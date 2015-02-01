controlSearchDoc = @controlSearchDoc
control = @control
controlId = @controlId
entreFechas = @entreFechas

Template.control.events
  'click #searchControlXCodigo': (e,t)->
    val = $(t.find('#codigo-control')).val()
    controlSearchDoc.set {codigo: parseInt(val)}
    false
  'click .to-delete': (e,t)->
    _id = $(e.target).attr('_id')
    control.remove _id
    controlId.set null
  'click #clearControlForm': (e,t)->
    controlId.set ''
    controlId.set null
    false
  'click #saveControlForm': (e, t)->
    if controlId.get() is null
      if AutoForm.validateForm('saveSearchControlForm')
        doc = AutoForm.getFormValues('saveSearchControlForm').insertDoc
        _id = control.insert doc
        controlId.set _id
        controlSearchDoc.set doc
    else
      if AutoForm.validateForm('saveSearchControlForm')
        doc = AutoForm.getFormValues('saveSearchControlForm').updateDoc
        _id = controlId.get()
        control.update({_id: _id}, doc)
        controlSearchDoc.set AutoForm.getFormValues('saveSearchControlForm').insertDoc
    false
  'click #searchControlForm': (e,t) ->
    docI = AutoForm.getFormValues('saveSearchControlForm').insertDoc
    controlSearchDoc.set docI
    false
  'click .to-edit-control': (e,t)->
    controlId.set $(e.target).attr('_id')
  'click #busquedaXfechas': (e,t)->
    fecha_ini = $(t.find('[formid=busquedaXfechas][name=fecha_ini]')).val()
    fecha_fin = $(t.find('[formid=busquedaXfechas][name=fecha_fin]')).val()
    console.log fecha_ini, fecha_fin
    entreFechas.set
      fecha_ini: fecha_ini
      fecha_fin: fecha_fin
