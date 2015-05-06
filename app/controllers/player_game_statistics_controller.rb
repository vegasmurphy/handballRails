class PlayerGameStatisticsController < ApplicationController
  before_action :set_player_game_statistic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:index, :show]
  # GET /player_game_statistics
  # GET /player_game_statistics.json
  def index
    @player_game_statistics = PlayerGameStatistic.all
  end

  # GET /player_game_statistics/1
  # GET /player_game_statistics/1.json
  def show
  end

  # GET /player_game_statistics/new
  def new
    @player_game_statistic = PlayerGameStatistic.new
  end

  # GET /player_game_statistics/1/edit
  def edit
  end

  # POST /player_game_statistics
  # POST /player_game_statistics.json
  def create
    @player_game_statistic = PlayerGameStatistic.new(player_game_statistic_params)

    respond_to do |format|
      if @player_game_statistic.save
        #format.html { redirect_to @player_game_statistic, notice: 'Player game statistic was successfully created.' }
        format.json { render :show, status: :created, location: @player_game_statistic }
      else
        format.html { render :new }
        format.json { render json: @player_game_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_game_statistics/1
  # PATCH/PUT /player_game_statistics/1.json
  def update
    respond_to do |format|
      if @player_game_statistic.update(player_game_statistic_params)
        #format.html { redirect_to @player_game_statistic, notice: 'Player game statistic was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_game_statistic }
      else
        format.html { render :edit }
        format.json { render json: @player_game_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_game_statistics/1
  # DELETE /player_game_statistics/1.json
  def destroy
    @player_game_statistic.destroy
    respond_to do |format|
      #format.html { redirect_to player_game_statistics_url, notice: 'Player game statistic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_game_statistic
      @player_game_statistic = PlayerGameStatistic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_game_statistic_params
      params.require(:player_game_statistic).permit(:game_id, :player_id, :goals, :yellow_cards, :red_cards, :two_minutes)
    end
end
