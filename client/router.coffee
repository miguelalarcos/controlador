HomeController = @HomeController
ClienteController = @ClienteController

Router.map ->
  @route 'login',
    path: '/login'
    controller: RouteController
  @route 'home',
    path: '/home'
    controller: HomeController
  @route 'cliente',
    path: '/cliente'
    controller: ClienteController
