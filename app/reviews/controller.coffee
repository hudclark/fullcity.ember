ReviewsController = Ember.Controller.extend

	actions:

		createReview: ->
			@set 'creatingReview', true

		openCoffee: (coffee) ->
			@transitionToRoute 'coffees.coffee', coffee

		cancel: ->
			@set 'creatingReview', false

`export default ReviewsController`
