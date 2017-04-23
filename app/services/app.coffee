ApplicationService = Ember.Service.extend

	modal: null

	closeModal: ->
		@set 'modal', null

	promptLogin: ->
		@set 'modal', 'login'

`export default ApplicationService`
