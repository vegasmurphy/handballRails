# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
	if $("#league_id").length
		console.log "found it"
		populate_contacts()
	$("#league_id").change ->
		populate_contacts()

populate_contacts = ->
	$team_select = $("select#game_team_id")
	$opponent_select = $("select#game_opponent_id")
	opponentSelected = $opponent_select.val();
	teamSelected = $team_select.val();
	$team_select.attr "disabled", "disabled"
	$opponent_select.attr "disabled", "disabled"
	if ($("#league_id").val())
		console.log teamSelected
		console.log opponentSelected
		company_id = $("select#opportunity_company_id").val()
		league_id = $("select#league_id").val()
		$team_select.html "<option value=\"\">(loading teams...)</option>"
		$opponent_select.html "<option value=\"\">(loading teams...)</option>"
		data = {league_id: league_id}
		data[window._auth_token_name] = window._auth_token
		$.ajax "/team_list",
			type: "post"
			dataType: "json"
			data: data
			success: (response) ->
				console.log response
				_html = '<option value="">Select the team:</option>'
				_html += '<option value="'+team.id+'">'+team.name + '</option>' for team in response.teams
				$opponent_select.html _html
				$opponent_select.removeAttr "disabled"
				$team_select.html _html
				$team_select.removeAttr "disabled"
				if(teamSelected)
					$team_select.val(teamSelected)
				if(opponentSelected)
					$opponent_select.val(opponentSelected)
				$("#game_tournament_id").val response.tournament
				$("#game_tournament_id").attr "readonly", "readonly"
			error: ->
				alert 'Error trying to load contacts.'
	else
		$team_select.html '<option value="">Select the League:</option>'
		$opponent_select.html '<option value="">Select the League:</option>'