App.NavbarController = Ember.ObjectController.extend
  authStateBinding: Ember.Binding.oneWay 'App.LoginStateManager.currentState'
  authState: null,
  authenticated: (->
    log.log "NavbarController authent"
    @.get("authState") == App.LoginStateManager.authenticated
  ).property("authState")
#  logout: ->
#    log.log "navbar loguot"
    #App.LoginStateManager.send "logout"




