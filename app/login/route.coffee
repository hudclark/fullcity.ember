LoginRoute = Ember.Route.extend

	auth: Ember.inject.service()

	redirect: ->
		if @get('auth').getToken() isnt null
			@transitionTo 'index'

	actions:

		onLogin: ->
			@transitionTo 'index'

`export default LoginRoute`
