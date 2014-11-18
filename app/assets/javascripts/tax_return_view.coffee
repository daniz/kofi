class window.TaxReturnView extends Backbone.View

	el: '.jumbo'

	events:
		'click .next-button' 			: 'onNextClick'
		'click .prev-button' 			: 'onPrevClick'
		'click .tax-year-selector li'	: 'onTaxYearClick'
		'click .include-spouse'			: 'onIncludeSpouseClick'
		'click .exclude-spouse'			: 'onExcludeSpouseClick'
		'click .gender-male'			: 'onMaleClick'
		'click .gender-female'			: 'onFemaleClick'
		'click #e-file-button'			: 'onEFileClick'
		'click #quote-button'			: 'onQuoteClick'


	initialize: ->

	next: ->
		$next = @$('section.active').next()

		if $next.length
			$next.addClass('active')
				.siblings('.tax-return-section')
				.removeClass 'active'

	prev: ->
		$prev = @$('section.active').prev()

		if $prev.length
			$prev.addClass('active')
				.siblings('.tax-return-section')
				.removeClass 'active'

	onNextClick: ->
		@next()
		if $('.tax-return-section.active').is '#final-section'
			@$('.tax-return-control').hide()

	onPrevClick: ->
		@prev()

	onTaxYearClick: (e) ->
		$li = @$ e.currentTarget
		$li.addClass('selected').siblings().removeClass 'selected'

	onIncludeSpouseClick: ->
		@$('.spouse-buttons').hide()
		@$('.spouse-name-form').show()

	onExcludeSpouseClick: ->
		@next()

	onMaleClick: ->
		@$('.gender-male').addClass('selected').siblings().removeClass 'selected'

	onFemaleClick: ->
		@$('.gender-female').addClass('selected').siblings().removeClass 'selected'

	onEFileClick: ->
		@$('section.active').hide()
		@$('#e-file-success-section').show()

	onQuoteClick: ->
		@$('section.active').hide()
		@$('#quote-success-section').show()





