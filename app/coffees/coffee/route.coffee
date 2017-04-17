`import ApplicationRoute from 'fullcity/application/route'`

CoffeesCoffeeRoute = ApplicationRoute.extend

	title: null

	model: (params) ->
		@get('store').findRecord('coffee', params.slug)

	afterModel: (model) ->
		if model
			@controllerFor('coffees').set 'title', model.get('name')
			@set 'title', model.get('name')
			@_super model

`export default CoffeesCoffeeRoute`
