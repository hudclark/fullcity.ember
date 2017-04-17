LikeView = Ember.Component.extend

	classNames: ['like-view']
	classNameBindings: ['liked']

	store: Ember.inject.service()

	click: ->
		adapter = @get('store').adapterFor 'review'
		if @get 'liked'
			@set 'liked', false
			@set 'likes', @get('likes') - 1
			adapter.unLike @get('review')
		else
			@set 'liked', true
			@set 'likes', @get('likes') + 1
			adapter.like @get('review')

`export default LikeView`
