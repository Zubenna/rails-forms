class UsersController < ApplicationController
    def create
  	#@user = User.new(user_params)
	@user = User.new(whitelisted_user_params)
  	if @user.save
    		redirect_to new_user_path
  	else
    		render :new
  	end
    end

   private

    def whitelisted_user_params
      params.require(:user).permit(:username,:email,:password)
    end
    def new
	@user = User.new
    end
end
