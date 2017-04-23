CreateReview = Ember.Component.extend

	classNames: ['create-review']
	coffees: []

	disableNext: Ember.computed 'name', 'roaster', ->
		!(@get('name') and @get('roaster'))

	store: Ember.inject.service()

	next: ->
		$('.ticker').css 'left', '-100%'

	prev: ->
		$('.ticker').css 'left', '0'

	actions:

		cancel: ->
			@sendAction 'cancel'

		next: ->
			setTimeout @next, 0

		prev: ->
			setTimeout @prev, 0

		searchCoffees: (query) ->
			@get('store').query('coffee', {name: query}).then (d) =>
				@set 'coffees', d

		searchRoasters: (query) ->
			@get('store').query('coffee', {roaster: query}).then (d) =>
				@set 'coffees', d

		selectRoaster: (coffee) ->
			if coffee
				@set 'roaster', coffee.get('roaster')

		selectCoffee: (coffee) ->
			if coffee
				@set 'name', coffee.get('name')
				@set 'roaster', coffee.get('roaster')

`export default CreateReview`
