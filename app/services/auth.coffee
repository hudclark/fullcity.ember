AuthService = Ember.Service.extend

	token: null

	setToken: (token) ->
		localStorage.setItem 'token', token
		@set 'token', token

	getToken: (token) ->
		@set 'token', localStorage.getItem 'token'
		@get 'token'

`export default AuthService`
