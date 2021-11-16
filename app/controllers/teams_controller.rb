class TeamsController < ApplicationController
  skip_before_action :is_authorized, only: [:create, :index]

  def index
    @teams = Team.all
    @data = []
    @teams.each do |team|
      @data << {
        id: team.id,
        name: team.name,
        games_played: team.games_played,
        wins: team.wins,
        losses: team.losses,
      }
    end

    render json: @data

  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
