# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	$('#board-toggle').click (event) ->
		event.preventDefault()
		if( !$('.field#board').is(":visible"))
			$('.field#board').show()
			$('.field#pin').hide()
			$('.field#like').hide()
			$('.field#following').hide()
			$('.field#follower').hide()

	$('#pin-toggle').click (event) ->
		event.preventDefault()
		if( !$('.field#pin').is(":visible"))
			$('.field#pin').show()
			$('.field#board').hide()
			$('.field#like').hide()
			$('.field#following').hide()
			$('.field#follower').hide()

	$('#following-toggle').click (event) ->
		event.preventDefault()
		if( !$('.field#following').is(":visible"))
			$('.field#following').show()
			$('.field#pin').hide()
			$('.field#like').hide()
			$('.field#board').hide()
			$('.field#follower').hide()

	$('#follower-toggle').click (event) ->
		event.preventDefault()
		if( !$('.field#follower').is(":visible"))
			$('.field#follower').show()
			$('.field#pin').hide()
			$('.field#like').hide()
			$('.field#board').hide()
			$('.field#following').hide()

	$('#like-toggle').click (event) ->
		event.preventDefault()
		if( !$('.field#like').is(":visible"))
			$('.field#like').show()
			$('.field#pin').hide()
			$('.field#follower').hide()
			$('.field#board').hide()
			$('.field#following').hide()
