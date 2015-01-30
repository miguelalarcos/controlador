cliente = @cliente

cliente.permit('insert').ifLoggedIn().exceptProps('codigo').apply()
cliente.permit('update').ifLoggedIn().exceptProps('codigo').apply()
cliente.permit('remove').ifLoggedIn().apply()