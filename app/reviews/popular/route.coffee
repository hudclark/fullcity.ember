`import ApplicationRoute from 'fullcity/application/route'`

ReviewsPopularRoute = ApplicationRoute.extend

	title: 'Popular Reviews'
	templateName: 'reviews/list'
	controllerName: 'reviews'

	model: ->
		data =
			reviews: [
				{
					coffee:
						name: 'Black Cat Classic'
						roaster: 'Intelligensia Coffee Roasters'
						slug: 'black-cat-classic'
					content: 'This syrupy and sweet espresso blend has been the staple of our lineup since the very beginning. It is a product of intensive lot selection and close, direct work with the farmers who produce its components. Supreme balance and a wonderful sweetness make this a classic.'
					author: 'hudson'
					stars: 3
					reviews: 12
					date: "two days ago"
					lastpost: "a day ago"
					liked: true
					likes: 31
				}
			]
		data

	afterModel: (model) ->
		@_super model
		@modelFor('reviews').reviews = model.reviews
		@controllerFor('reviews').set 'title', @get('title')
	
`export default ReviewsPopularRoute`
