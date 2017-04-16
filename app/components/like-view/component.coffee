LikeView = Ember.Component.extend

	classNames: ['like-view']
	classNameBindings: ['liked']


	click: ->
		if @get 'liked'
			@set 'liked', false
			@set 'likes', @get('likes') - 1
		else
			@set 'liked', true
			@set 'likes', @get('likes') + 1

		# TODO actually hit api

`export default LikeView`
