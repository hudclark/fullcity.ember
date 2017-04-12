ApplicationRoute = Ember.Route.extend

	auth: Ember.inject.service()

	beforeModel: ->
		# fetch token from local storage
		@get('auth').getToken()

`export default ApplicationRoute`
