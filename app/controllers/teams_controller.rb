class TeamsController < ApplicationController
  skip_before_action :is_authorized, only: [:create, :index]

  def index
    @teams = Team.all
    render json: @teams
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
