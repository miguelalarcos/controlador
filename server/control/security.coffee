control = @control

control.permit('insert').ifLoggedIn().exceptProps('codigo').apply()
control.permit('update').ifLoggedIn().exceptProps('codigo').apply()
control.permit('remove').ifLoggedIn().apply()