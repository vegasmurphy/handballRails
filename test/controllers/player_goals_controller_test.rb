require 'test_helper'

class PlayerGoalsControllerTest < ActionController::TestCase
  setup do
    @player_goal = player_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_goal" do
    assert_difference('PlayerGoal.count') do
      post :create, player_goal: { goals: @player_goal.goals, player_id: @player_goal.player_id, tournament_id: @player_goal.tournament_id }
    end

    assert_redirected_to player_goal_path(assigns(:player_goal))
  end

  test "should show player_goal" do
    get :show, id: @player_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_goal
    assert_response :success
  end

  test "should update player_goal" do
    patch :update, id: @player_goal, player_goal: { goals: @player_goal.goals, player_id: @player_goal.player_id, tournament_id: @player_goal.tournament_id }
    assert_redirected_to player_goal_path(assigns(:player_goal))
  end

  test "should destroy player_goal" do
    assert_difference('PlayerGoal.count', -1) do
      delete :destroy, id: @player_goal
    end

    assert_redirected_to player_goals_path
  end
end
