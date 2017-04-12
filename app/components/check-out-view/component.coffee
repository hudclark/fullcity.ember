CheckOutView = Ember.Component.extend

	classNames: ['check-out-view']

	auth: Ember.inject.service()

	actions:

		logout: ->
			@get('auth').logout()

`export default CheckOutView`
