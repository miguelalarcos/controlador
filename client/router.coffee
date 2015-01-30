HomeController = @HomeController
ClienteController = @ClienteController

Router.map ->
  @route 'login',
    path: '/login'
    controller: RouteController
  @route 'control',
    path: '/control'
    controller: HomeController
  @route 'cliente',
    path: '/cliente'
    controller: ClienteController
