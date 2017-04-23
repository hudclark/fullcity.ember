ApplicationRoute = Ember.Route.extend

	auth: Ember.inject.service()
	app: Ember.inject.service()

	beforeModel: ->
		# fetch token from local storage
		@get('auth').getToken()

	afterModel: (model) ->
		$(document).attr 'title', "Full City - #{@get 'title'}"

	actions:

		refresh: ->
			@refresh()
			@get('app').closeModal()

`export default ApplicationRoute`
