class GamesController < ApplicationController
skip_before_action :is_authorized, only: [:create, :index]

  # GET /games/1 or /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /game/1/edit
  def edit
  end

  def index
		@games = Game.all
		render json: @games
	end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)
    render :json => @game.errors.full_messages
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    respond_to do |format|
      if @game.update(games_params)
        format.html { redirect_to @game, notice: "game was successfully updated." }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
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
    params.require(:game).permit(:venue, :time, :awayscore, :homescore, :home_id, :away_id, :status, :round, :division, :homevotes, :awayvotes, :homebalance, :awaybalance, :homedrinks_id, :awaydrinks_id, :homeavailible_id, :awayavailible_id  )
  end
end
