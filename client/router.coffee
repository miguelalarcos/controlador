HomeController = @HomeController
ClienteController = @ClienteController
ReportController = @ReportController

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
  @route 'reports',
    path: '/reports'
    controller: ReportController
