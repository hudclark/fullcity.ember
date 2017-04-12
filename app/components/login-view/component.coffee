LoginView = Ember.Component.extend

	classNames: ['login-view']
	
	store: Ember.inject.service()
	auth: Ember.inject.service()

	joining: false

	actions:

		joinForm: ->
			if !@get('joining') and !@get('submitting')
				$('.highlight-spacer').removeClass('flex-10').addClass('flex-50')
				$('.join').addClass 'active'
				$('.login').removeClass 'active'
				@set 'joining', true
				@set 'errors', null

		loginForm: ->
			if @get('joining') and !@get('submitting')
				$('.highlight-spacer').removeClass('flex-50').addClass('flex-10')
				$('.join').removeClass 'active'
				$('.login').addClass 'active'
				@set 'joining', false
				@set 'errors', null

		submitForm: ->
			@set 'errors', null

			username = @get 'username'
			pass = @get 'pass'

			promise = null

			if @get 'joining'
				errors = []
				pass2 = @get 'pass2'
				email = @get 'email'
				if pass.length < 6
					errors.pushObject {message: "Passwords must be at least 6 characters long"}
				if pass2 isnt pass
					errors.pushObject {message: "The passwords do not match"}
				if errors.length > 0
					@set 'errors', errors
					return
				user =
					email: email
					password: pass
					username: username
				promise = @get('store').adapterFor('auth').createAccount user
			else
				promise = @get('store').adapterFor('auth').login(username, pass)

			promise.then( (resp) =>
				@get('auth').setToken resp.token
				@sendAction 'on-login'
			).catch( (resp) =>
				console.log resp
				@set 'errors', resp.errors
			).finally =>
				@set 'submitting', false

			@set 'submitting', true

`export default LoginView`
