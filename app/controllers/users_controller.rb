class UsersController < ApplicationController

	def new
	end

	def create
		p @user = User.new(user_params)
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
	end
end