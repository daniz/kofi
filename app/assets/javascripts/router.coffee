#= require ./tax_return_view

class Kofi.Router extends Backbone.Router

	routes:
		''					: 'home'
		'dashboard/index'	: 'dashboard'
		'dashboard/cpa'		: 'cpaDash'
		'wizard/index'		: 'wizard'
		'tax_return/index'	: 'taxReturn'

	home: ->
		$('#header-nav-home').addClass 'active'

	dashboard: ->
		$('#header-nav-dash').addClass 'active'

	wizard: ->
		$('#header-nav-dash').addClass 'active'

	taxReturn: ->
		$('#header-nav-tax').addClass 'active'
		new TaxReturnView

	cpaDash:->
		$('#header-nav-cpa-dash').addClass 'active'