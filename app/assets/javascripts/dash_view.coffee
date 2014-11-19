class window.DashView extends Backbone.View

	el: '.jumbo'

	events:
		'click .sidebar-app-feex' : 'onFeexClick'

	onFeexClick: ->
		@$('.dash-main-section.active').hide()
		@$('#dash-main-app-feex').addClass 'active'


