`import ApplicationRoute from 'fullcity/application/route'`

ReviewsNewRoute = ApplicationRoute.extend

	title: 'New'
	templateName: 'reviews/list'
	controllerName: 'reviews'

	model: ->
		@get('store').adapterFor('review').new()

	afterModel: (model) ->
		@_super model
		@modelFor('reviews').reviews = model.reviews
		@controllerFor('reviews').set 'title', @get('title')
	
`export default ReviewsNewRoute`
