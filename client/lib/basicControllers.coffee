class @LoginController extends RouteController
  onBeforeAction: ->
    if not Meteor.user() and not Meteor.loggingIn()
      @redirect 'login'
    @next()

LoginController = @LoginController

class @BasicController extends LoginController
  layoutTemplate: 'controlLayout'