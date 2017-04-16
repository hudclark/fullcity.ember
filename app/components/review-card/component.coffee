ReviewCard = Ember.Component.extend

	classNames: ['review-card']
	coffee: null

	stars: Ember.computed 'review.stars', ->
		l = []
		stars = @get 'review.stars'
		for i in [0...5]
			l.pushObject(i < stars)
		l

`export default ReviewCard`
