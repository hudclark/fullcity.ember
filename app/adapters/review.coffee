`import ApplicationAdapter from 'fullcity/adapters/application'`

ReviewAdapter = ApplicationAdapter.extend

	new: ->
		url = "#{@host}/reviews/new"
		@ajax url, 'GET'
	
	like: (review) ->
		url = "#{@host}/reviews/#{review}/like"
		@ajax url, 'POST'

	unLike: (review) ->
		url = "#{@host}/reviews/#{review}/unlike"
		@ajax url, 'POST'

`export default ReviewAdapter`
