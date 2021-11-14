class UsersController < ApplicationController
	skip_before_action :is_authorized, only: [:create, :signin, :index]

	def user_profile
		render json: @user
	end

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

	def signin
		@user = User.find_by(email: params[:user][:email])

		if @user && @user.authenticate(params[:user][:password])
			@token = JWT.encode({user_id: @user.id}, Rails.application.secrets.secret_key_base[0])

			render json: {user: @user, token: @token}
		else
			render json: {error: "Invalid Credentials"}, status: :unauthorized
		end
	end

	def signout
		@user = User.find_by params[:user]
	end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :signin, :captain)
  end

end
