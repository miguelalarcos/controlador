@control = control = new Meteor.Collection "Control"
@control_schema = control_schema = new SimpleSchema
  codigo:
    type: Number
    optional: true
  cliente:
    type: String
  fecha:
    type: Date
  bruto:
    type: Number
    decimal: true
  tara:
    type: Number
    decimal: true
  neto:
    type: Number
    decimal: true
    autoValue:
      ->
        bruto = this.field('bruto').value
        tara = this.field('tara').value
        bruto - tara
  observaciones:
    type: String
    optional: true

control.attachSchema(control_schema)

cliente = @cliente

#control.helpers
#  clienteName: ->
#     doc = cliente.findOne(this.cliente)
#     if doc
#       doc.nombre
#     else
#       null

control.helpers
  Cliente: ->
    cliente.findOne(this.cliente)
