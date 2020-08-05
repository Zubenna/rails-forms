# frozen_string_literal: true

class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    # @user = User.new(whitelisted_user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def new
    @user = User.new(email: 'example@example.com')
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
