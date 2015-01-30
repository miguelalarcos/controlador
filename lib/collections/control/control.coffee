@control = control = new Meteor.Collection "Control"
@control_schema = control_schema = new SimpleSchema
  codigo:
    type: Number
    optional: true
  cliente:
    type: String
  fecha:
    type: Date
  observaciones:
    type: String
    optional: true

control.attachSchema(control_schema)

cliente = @cliente

control.helpers
  clienteName: ->
     doc = cliente.findOne(this.cliente)
     if doc
       doc.nombre
     else
       null