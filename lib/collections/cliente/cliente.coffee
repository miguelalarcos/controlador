@cliente = cliente = new Meteor.Collection "Cliente"
@cliente_schema = cliente_schema = new SimpleSchema
  nombre:
    type: String

cliente.attachSchema(cliente_schema)
