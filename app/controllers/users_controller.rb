class UsersController < ApplicationController
	before_filter :authorize_admin, only: [:index]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render :new
    end
	end

private

	def user_params
		params.require(:user).permit(:email, :phone, :password, :password_confirmation)
	end
end
