`import DS from 'ember-data'`
`import config from 'fullcity/config/environment'`

ApplicationAdapter = DS.RESTAdapter.extend
	auth: Ember.inject.service()

	host: config.host

	headers: Ember.computed 'auth.token', ->
		'x-access-token': @get('auth.token')

`export default ApplicationAdapter`
