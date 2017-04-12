`import DS from 'ember-data'`

UserModel = DS.Model.extend
	username: DS.attr 'string'
	email: DS.attr 'string'

`export default UserModel`
