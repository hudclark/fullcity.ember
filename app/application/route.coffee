ApplicationRoute = Ember.Route.extend

	auth: Ember.inject.service()

	beforeModel: ->
		# fetch token from local storage
		@get('auth').getToken()

	afterModel: (model) ->
		$(document).attr 'title', "Full City - #{@get 'title'}"

`export default ApplicationRoute`
