require 'test_helper'

class TeamTournamentsControllerTest < ActionController::TestCase
  setup do
    @team_tournament = team_tournaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_tournaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_tournament" do
    assert_difference('TeamTournament.count') do
      post :create, team_tournament: { team_id: @team_tournament.team_id, tournament_id: @team_tournament.tournament_id }
    end

    assert_redirected_to team_tournament_path(assigns(:team_tournament))
  end

  test "should show team_tournament" do
    get :show, id: @team_tournament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_tournament
    assert_response :success
  end

  test "should update team_tournament" do
    patch :update, id: @team_tournament, team_tournament: { team_id: @team_tournament.team_id, tournament_id: @team_tournament.tournament_id }
    assert_redirected_to team_tournament_path(assigns(:team_tournament))
  end

  test "should destroy team_tournament" do
    assert_difference('TeamTournament.count', -1) do
      delete :destroy, id: @team_tournament
    end

    assert_redirected_to team_tournaments_path
  end
end
