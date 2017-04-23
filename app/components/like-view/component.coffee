LikeView = Ember.Component.extend

	classNames: ['like-view']
	classNameBindings: ['liked']

	store: Ember.inject.service()
	auth: Ember.inject.service()
	app: Ember.inject.service()

	click: ->
		# TODO make sure to display a popup prompting login if not authed


		if @get 'auth.isLoggedIn'
			adapter = @get('store').adapterFor 'review'
			if @get 'liked'
				@set 'liked', false
				@set 'likes', @get('likes') - 1
				adapter.unLike @get('review')
			else
				@set 'liked', true
				@set 'likes', @get('likes') + 1
				adapter.like @get('review')
		else
			@get('app').promptLogin()

`export default LikeView`
