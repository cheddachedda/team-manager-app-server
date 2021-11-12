class UsersController < ApplicationController
	def index
		@users = User.all
		render json: @users
	end

	def create
		@user = User.create(user_params)
		if @user.save
			render json: @user, status: :created
		else
			# Logs errors to the console if user was not created
			render json: @user.errors.full_messages
		end
	end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password)
  end

end
