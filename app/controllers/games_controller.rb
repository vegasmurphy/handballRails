class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy, :stats]
  before_action :authenticate, except: [:index]
  # GET /games
  # GET /games.json
  def index
    @games = Game.all
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @teams = Team.all
    @game = Game.new
  end

  def stats
    @team_stats = []
    @opponent_stats = []
    for player in @team_players
      stat=PlayerGameStatistic.find_by game_id: @game.id, player_id: player.id
      if(!stat)
        stat=PlayerGameStatistic.new({:game_id => @game.id,:player_id=>player.id})
      end
      print "Found this stat ",stat.player_id, stat.goals
      @team_stats.push(stat)
    end
    for player in @opponent_players
      stat=PlayerGameStatistic.find_by game_id: @game.id, player_id: player.id
      if !stat
        stat = PlayerGameStatistic.new({:game_id => @game.id,:player_id=>player.id})
      end
      @opponent_stats.push(stat)
    end
  end
  # GET /games/1/edit
  def edit
    print "ID:", @game.tournament_id
    @tournament = Tournament.find(@game.tournament_id)
    @teams = @tournament.teams
    @league = League.find(@tournament.league_id)
    print "LEAGUE", @league
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: game_params }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
      get_team_players
      @player_game_statistic=PlayerGameStatistic.new({:game_id => @game.id,:player_id=>Player.all.first.id})
      get_opponent_players
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:team_id, :opponent_id, :team_score, :opponent_score, :date, :location,:tournament_id, :fecha)
    end

    def get_team_players
      @team_players=@game.team.get_current_players
    end

    def get_opponent_players
      @opponent_players=@game.opponent.get_current_players  
    end
end
