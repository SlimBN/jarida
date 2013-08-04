# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	if $('#user-articles').length
		new ArticlesPager()

class ArticlesPager
	constructor: ->
		$(window).scroll(@check)

	check: =>
		if @nearBottom()
			$(window).unbind('scroll', @check)
			$.getJSON($('#user-articles').data('json-url'), @render)

	nearBottom: =>
		$(window).scrollTop() > $(document).height() - $(window).height() - 50

	render: (articles) =>
		for article in articles
			$('#user-articles').append Mustache.to_html($('#article_template').html(), article)
		$(window).scroll(@check)