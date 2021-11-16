class GamesController < ApplicationController
skip_before_action :is_authorized, only: [:create, :index]


  def index
    @games = Game.all
    render json: @games
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)
    render :json => @game.errors.full_messages
  end

  # GET /games/1 or /games/1.json
  def show
  end

  # GET /game/1/edit
  def edit
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    respond_to do |format|
      if @game.update(games_params)
        # format.html { redirect_to @game, notice: "game was successfully updated." }
        # format.json { render :show, status: :ok, location: @game }
        render :json => @game
      else
        # format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1 or /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: "Game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = Game.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def game_params
    params.require(:game).permit(:venue, :datetime, :away_score, :home_score, :home_id, :away_id, :status, :round, :division, :home_votes, :away_votes, :home_balance, :away_balance, :home_drinks_id, :away_drinks_id, :home_availible_id, :away_availible_id  )
  end
end
