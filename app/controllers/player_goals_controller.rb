class PlayerGoalsController < ApplicationController
  before_action :set_player_goal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:index, :show]
  # GET /player_goals
  # GET /player_goals.json
  def index
    @player_goals = PlayerGoal.all
  end

  # GET /player_goals/1
  # GET /player_goals/1.json
  def show
  end

  # GET /player_goals/new
  def new
    @player_goal = PlayerGoal.new
  end

  # GET /player_goals/1/edit
  def edit
  end

  # POST /player_goals
  # POST /player_goals.json
  def create
    @player_goal = PlayerGoal.new(player_goal_params)

    respond_to do |format|
      if @player_goal.save
        format.html { redirect_to @player_goal, notice: 'Player goal was successfully created.' }
        format.json { render :show, status: :created, location: @player_goal }
      else
        format.html { render :new }
        format.json { render json: @player_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_goals/1
  # PATCH/PUT /player_goals/1.json
  def update
    respond_to do |format|
      if @player_goal.update(player_goal_params)
        format.html { redirect_to @player_goal, notice: 'Player goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_goal }
      else
        format.html { render :edit }
        format.json { render json: @player_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_goals/1
  # DELETE /player_goals/1.json
  def destroy
    @player_goal.destroy
    respond_to do |format|
      format.html { redirect_to player_goals_url, notice: 'Player goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_goal
      @player_goal = PlayerGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_goal_params
      params.require(:player_goal).permit(:player_id, :tournament_id, :goals)
    end
end
