IndexRoute = Ember.Route.extend

	auth: Ember.inject.service()

	model: ->
		if @get('auth.isLoggedIn')
			@get('store').queryRecord('user', {}).then (user) =>
				@set 'auth.user', user

	actions:

		onLogin: ->
			@refresh()

`export default IndexRoute`
