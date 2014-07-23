require 'test_helper'

class PlayerTeamTournamentsControllerTest < ActionController::TestCase
  setup do
    @player_team_tournament = player_team_tournaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_team_tournaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_team_tournament" do
    assert_difference('PlayerTeamTournament.count') do
      post :create, player_team_tournament: { player_id: @player_team_tournament.player_id, team_id: @player_team_tournament.team_id, tournament_id: @player_team_tournament.tournament_id }
    end

    assert_redirected_to player_team_tournament_path(assigns(:player_team_tournament))
  end

  test "should show player_team_tournament" do
    get :show, id: @player_team_tournament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_team_tournament
    assert_response :success
  end

  test "should update player_team_tournament" do
    patch :update, id: @player_team_tournament, player_team_tournament: { player_id: @player_team_tournament.player_id, team_id: @player_team_tournament.team_id, tournament_id: @player_team_tournament.tournament_id }
    assert_redirected_to player_team_tournament_path(assigns(:player_team_tournament))
  end

  test "should destroy player_team_tournament" do
    assert_difference('PlayerTeamTournament.count', -1) do
      delete :destroy, id: @player_team_tournament
    end

    assert_redirected_to player_team_tournaments_path
  end
end
