ReviewCard = Ember.Component.extend

	classNames: ['review-card']

	stars: Ember.computed 'review.stars', ->
		l = []
		stars = @get 'review.stars'
		for i in [0...5]
			l.pushObject(i < stars)
		l

	actions:

		readMore: ->
			@sendAction 'open-coffee', @get('review.coffee')

`export default ReviewCard`
