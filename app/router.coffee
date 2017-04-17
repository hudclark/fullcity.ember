`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
	location: config.locationType,
	rootURL: config.rootURL

Router.map ->

	@route 'search'

	@route 'reviews', ->
		@route 'popular'
		@route 'new'
		@route 'create'

	@route 'coffees', ->
		@route 'coffee', {path: ':slug'}

`export default Router`
