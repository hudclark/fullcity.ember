PopularRoute = Ember.Route.extend

	templateName: 'coffee/index'

	model: ->
		data =
			title: 'Popular'
			reviews: [
				{
					coffee:
						title: 'Black Cat Classic'
						roaster: 'Intelligensia Coffee Roasters'
					content: 'This syrupy and sweet espresso blend has been the staple of our lineup since the very beginning. It is a product of intensive lot selection and close, direct work with the farmers who produce its components. Supreme balance and a wonderful sweetness make this a classic.'
					author: 'hudson'
					stars: 3
					reviews: 12
					date: "two days ago"
					lastpost: "a day ago"
					liked: true
					likes: 31
				},
				{
					coffee:
						title: 'Black Cat Classic'
						roaster: 'Intelligensia Coffee Roasters'
					content: 'TThis syrupy and sweet espresso blend has been the staple of our lineup since the very beginning. It is a product of intensive lot selection and close, direct work with the farmers who produce its components. Supreme balance and a wonderful sweetness make this a classic.This syrupy and sweet espresso blend has been the staple of our lineup since the very beginning. It is a product of intensive lot selection and close, direct work with the farmers who produce its components. '
					author: 'hudson'
					stars: 4
					reviews: 12
					liked: false
					likes: 42
				},
				{
					coffee:
						title: 'Black Cat Classic'
						roaster: 'Intelligensia Coffee Roasters'
					content: 'This syrupy and sweet espresso blend has been the staple of our '
					author: 'hudson'
					stars: 4
					reviews: 12
				},
				{
					coffee:
						title: 'Black Cat Classic'
						roaster: 'Intelligensia Coffee Roasters'
					content: 'This syrupy and sweet espresso blend has been the staple of our lineup since the very beginning. It is a product of intensive lot selection and close, direct work with the farmers who produce its components. Supreme balance and a wonderful sweetness make this a classic.'
					author: 'hudson'
					stars: 4
					reviews: 12
				}
			]
		data
	
`export default PopularRoute`
