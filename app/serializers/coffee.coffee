`import DS from 'ember-data'`

CoffeeSerializer = DS.RESTSerializer.extend

	primaryKey: 'slug'

`export default CoffeeSerializer`

