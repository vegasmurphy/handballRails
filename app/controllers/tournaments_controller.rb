class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy, :games]
  before_action :authenticate, except: [:index, :show]

  # GET /tournaments
  # GET /tournaments.json
  def index
    league=League.find(params[:league_id])
    @tournaments = league.tournaments
  end

  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
    @teams=@tournament.teams
    @teams = @teams.sort { |a,b| a.score(@tournament)[:goal_difference] <=> b.score(@tournament)[:goal_difference] }
    @teams = @teams.sort { |a,b| a.score(@tournament)[:points] <=> b.score(@tournament)[:points] }
    @teams.reverse!
    @games = @tournament.games
  end

  # GET /tournaments/new
  def new
    league=League.find(params[:league_id])
    @tournament = league.tournaments.build
  end

  # GET /tournaments/1/edit
  def edit
  end

  def add_team
    @tournament=Tournament.find(params[:id])
    @team_tournament=@tournament.team_tournaments.build
  end

  def games
    @games = @tournament.games
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    league=League.find(params[:league_id])
    @tournament = league.tournaments.create(tournament_params)

    respond_to do |format|
      if @tournament.save
        format.html { redirect_to [@tournament.league,@tournam], notice: 'Tournament was successfully created.' }
        format.json { render :show, status: :created, location: @tournament }
      else
        format.html { render :new }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournaments/1
  # PATCH/PUT /tournaments/1.json
  def update
    respond_to do |format|
      if @tournament.update(tournament_params)
        format.html { redirect_to @tournament, notice: 'Tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament }
      else
        format.html { render :edit }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url, notice: 'Tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:year, :semester, :league_id)
    end
end
