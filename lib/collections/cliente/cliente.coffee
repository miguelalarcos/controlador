@cliente = cliente = new Meteor.Collection "Cliente"
@cliente_schema = cliente_schema = new SimpleSchema
  codigo:
    type: Number
    optional: true
  nombre:
    type: String
  direccion:
    type: String
    optional: true
  provincia:
    type: String
    optional: true
  telefono:
    type: String
    regEx:  /^[0-9]{9}$/


cliente.attachSchema(cliente_schema)
