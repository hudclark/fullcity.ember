ReviewsController = Ember.Controller.extend

	actions:

		createReview: ->
			@transitionToRoute 'reviews.create'

		openCoffee: (coffee) ->
			@transitionToRoute 'coffees.coffee', coffee

`export default ReviewsController`
