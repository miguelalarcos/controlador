cliente = @cliente

Meteor.methods
  clientesXnombre: (query)->
    if query != ''
      cliente.find({nombre: {$regex: "^.*"+query+".*$", $options: 'i'}}).fetch()
    else
      []

