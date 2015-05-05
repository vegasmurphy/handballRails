class PlayerTeamTournamentsController < ApplicationController
  before_action :set_player_team_tournament, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:index, :show]
  # GET /player_team_tournaments
  # GET /player_team_tournaments.json
  def index
    @player_team_tournaments = PlayerTeamTournament.all
  end

  # GET /player_team_tournaments/1
  # GET /player_team_tournaments/1.json
  def show
  end

  # GET /player_team_tournaments/new
  def new
    @player_team_tournament = PlayerTeamTournament.new
    @teams = Team.all
    @players = Player.all
  end

  # GET /player_team_tournaments/1/edit
  def edit
  end

  # POST /player_team_tournaments
  # POST /player_team_tournaments.json
  def create
    @player_team_tournament = PlayerTeamTournament.new(player_team_tournament_params)

    respond_to do |format|
      if @player_team_tournament.save
        format.html { redirect_to @player_team_tournament, notice: 'Player team tournament was successfully created.' }
        format.json { render :show, status: :created, location: @player_team_tournament }
      else
        format.html { render :new }
        format.json { render json: @player_team_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_team_tournaments/1
  # PATCH/PUT /player_team_tournaments/1.json
  def update
    respond_to do |format|
      if @player_team_tournament.update(player_team_tournament_params)
        format.html { redirect_to @player_team_tournament, notice: 'Player team tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_team_tournament }
      else
        format.html { render :edit }
        format.json { render json: @player_team_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_team_tournaments/1
  # DELETE /player_team_tournaments/1.json
  def destroy
    @player_team_tournament.destroy
    respond_to do |format|
      format.html { redirect_to player_team_tournaments_url, notice: 'Player team tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_team_tournament
      @player_team_tournament = PlayerTeamTournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_team_tournament_params
      params.require(:player_team_tournament).permit(:player_id, :team_id, :tournament_id)
    end
end
