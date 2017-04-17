`import DS from 'ember-data'`

CoffeeModel = DS.Model.extend
	name: DS.attr 'string'
	roaster: DS.attr 'string'
	slug: DS.attr 'string'
	reviews: DS.attr()

`export default CoffeeModel`
