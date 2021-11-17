class TeamsController < ApplicationController
  skip_before_action :is_authorized, only: [:create, :index, :show]

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
        draws: team.draws,
        points_for: team.points_for,
        points_against: team.points_against,
      }
    end

    render json: @data

  end

  def new
  end

  def create
  end

  def show
    @team = Team.find params[:id]
    @users = [];
    @team.users.each do |user|
      @users.push(user.name)
    end
    @data = {
      id: @team.id,
      name: @team.name,
      games_played: @team.games_played,
      wins: @team.wins,
      losses: @team.losses,
      users: @users
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
