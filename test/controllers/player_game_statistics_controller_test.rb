require 'test_helper'

class PlayerGameStatisticsControllerTest < ActionController::TestCase
  setup do
    @player_game_statistic = player_game_statistics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_game_statistics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_game_statistic" do
    assert_difference('PlayerGameStatistic.count') do
      post :create, player_game_statistic: { game_id: @player_game_statistic.game_id, goals: @player_game_statistic.goals, player_id: @player_game_statistic.player_id, red_cards: @player_game_statistic.red_cards, two_minutes: @player_game_statistic.two_minutes, yellow_cards: @player_game_statistic.yellow_cards }
    end

    assert_redirected_to player_game_statistic_path(assigns(:player_game_statistic))
  end

  test "should show player_game_statistic" do
    get :show, id: @player_game_statistic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_game_statistic
    assert_response :success
  end

  test "should update player_game_statistic" do
    patch :update, id: @player_game_statistic, player_game_statistic: { game_id: @player_game_statistic.game_id, goals: @player_game_statistic.goals, player_id: @player_game_statistic.player_id, red_cards: @player_game_statistic.red_cards, two_minutes: @player_game_statistic.two_minutes, yellow_cards: @player_game_statistic.yellow_cards }
    assert_redirected_to player_game_statistic_path(assigns(:player_game_statistic))
  end

  test "should destroy player_game_statistic" do
    assert_difference('PlayerGameStatistic.count', -1) do
      delete :destroy, id: @player_game_statistic
    end

    assert_redirected_to player_game_statistics_path
  end
end
