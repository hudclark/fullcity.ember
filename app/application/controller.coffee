ApplicationController = Ember.Controller.extend

	app: Ember.inject.service()

	actions:

		closeModal: ->
			console.log 'test'
			@set 'app.modal', null

`export default ApplicationController`
