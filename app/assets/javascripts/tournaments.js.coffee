# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
	disableTabs()

disableTabs = ->
	$(".tab-pane").each ->
		if($(this).find("tr").length<2)
			$("a[href$="+$(this).attr("id")).parent().addClass("disabled")