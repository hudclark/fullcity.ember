`import ApplicationAdapter from 'fullcity/adapters/application'`

AuthAdapter = ApplicationAdapter.extend

	login: (username, password) ->
		params =
			username: username
			password: password
		url = "#{@host}/login"
		@ajax url, 'POST', {data: params}

	createAccount: (user) ->
		data =
			user: user
		url = "#{@host}/join"
		@ajax url, 'POST', {data: data}

`export default AuthAdapter`
