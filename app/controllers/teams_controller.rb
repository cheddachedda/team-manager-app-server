class TeamsController < ApplicationController
  skip_before_action :is_authorized, only: [:create, :index, :division, :show]

  def index
    @teams = Team.all
    # @data = []
    # @teams.each do |team|
    #   @data << {
    #     id: team.id,
    #     name: team.name,
    #     division: team.division,
    #     games_played: team.games_played,
    #     wins: team.wins,
    #     losses: team.losses,
    #     draws: team.draws,
    #     points_for: team.points_for,
    #     points_against: team.points_against,
    #   }
    # end

    render json: @teams
  end

  def new
  end

  def create
  end

  def division
    teams = Team.where(division: params[:division_name])
    @data = []
    teams.each do |t|
      @data << {
        id: t.id,
        name: t.name,
        league_position: t.league_position,
        games_played: t.games_played,
        wins: t.wins,
        losses: t.losses,
        draws: t.draws,
        points_for: t.points_for,
        points_against: t.points_against,
        points_percentage: t.points_percentage,
        win_percentage: t.win_percentage,
      }
    end
    render json: @data
  end

  def show
    @team = Team.find params[:id]
    @data = {
      id: @team.id,
      name: @team.name,
      games_played: @team.games_played,
      wins: @team.wins,
      losses: @team.losses,
    }

    render json: @data
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
