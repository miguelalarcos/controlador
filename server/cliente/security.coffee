cliente = @cliente

cliente.permit('insert').ifLoggedIn().apply()
cliente.permit('update').ifLoggedIn().apply()
cliente.permit('remove').ifLoggedIn().apply()