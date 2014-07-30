class TeamTournamentsController < ApplicationController
  before_action :set_team_tournament, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:index, :show]
  # GET /team_tournaments
  # GET /team_tournaments.json
  def index
    @team_tournaments = TeamTournament.all
  end

  # GET /team_tournaments/1
  # GET /team_tournaments/1.json
  def show
  end

  # GET /team_tournaments/new
  def new
    @team_tournament = TeamTournament.new
  end

  # GET /team_tournaments/1/edit
  def edit
  end

  # POST /team_tournaments
  # POST /team_tournaments.json
  def create
    @team_tournament = TeamTournament.new(team_tournament_params)

    respond_to do |format|
      if @team_tournament.save
        format.html { redirect_to @team_tournament, notice: 'Team tournament was successfully created.' }
        format.json { render :show, status: :created, location: @team_tournament }
      else
        format.html { render :new }
        format.json { render json: @team_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_tournaments/1
  # PATCH/PUT /team_tournaments/1.json
  def update
    respond_to do |format|
      if @team_tournament.update(team_tournament_params)
        format.html { redirect_to @team_tournament, notice: 'Team tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_tournament }
      else
        format.html { render :edit }
        format.json { render json: @team_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_tournaments/1
  # DELETE /team_tournaments/1.json
  def destroy
    @team_tournament.destroy
    respond_to do |format|
      format.html { redirect_to team_tournaments_url, notice: 'Team tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_tournament
      @team_tournament = TeamTournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_tournament_params
      params.require(:team_tournament).permit(:team_id, :tournament_id)
    end
end
