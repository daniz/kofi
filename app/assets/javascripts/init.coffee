$ ->
	console.log 'started'
	new Kofi.Router
	Backbone.history.start pushState: yes
