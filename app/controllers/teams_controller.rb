class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:index, :show]
  before_action :set_current_tournament, only: [:show] 
  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @teams = Team.all
    @visiting_games = @team.visiting_games.where("tournament_id = ?",@current_tournament.id)
    @local_games = @team.games.where("tournament_id = ?",@current_tournament.id)
    @games = @local_games+@visiting_games
    @players = @team.players.where("tournament_id = ?",@current_tournament.id)
    @scores = {}
    #@query = @team.score(@team.tournaments.find(1))
    @tournaments=@team.tournaments
    @team.tournaments.each do |tournament|
      @scores[tournament]=@team.score(tournament)
    end
  end

  # GET /teams/new
  def new
    @leagues = League.all
    @team = Team.new
  end

  def team_list
    if params[:league_id]
      @league = League.find(params[:league_id])
      @tournament = get_current_tournament(@league.tournaments)
      print("Tournament found ", @tournament.teams.first.name)
      @teams = @tournament.teams
    else
      @teams = Team.all
    end
    @response = {"teams" => @teams, "tournament" => @tournament.id}
    print (@response)
    respond_with(@response) do |format|
      format.json { render :json => @response.to_json }
    end 
  end
  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name,:logo_link)
    end
    
    def set_current_tournament
      @current_tournament=Team.find(params[:id]).get_current_tournament
    end
end
