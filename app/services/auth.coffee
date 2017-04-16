AuthService = Ember.Service.extend

	token: null

	setToken: (token) ->
		localStorage.setItem 'token', token
		@set 'token', token

	getToken: (token) ->
		@set 'token', localStorage.getItem 'token'
		@get 'token'

	isLoggedIn: Ember.computed 'token', ->
		@get('token') isnt null and @get('token') isnt 'null'

	logout: ->
		@setToken null
		@set 'user', null

`export default AuthService`
