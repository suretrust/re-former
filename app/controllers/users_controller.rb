# frozen_string_literal: true

class UsersController < ApplicationController
  include UsersHelper
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
        redirect_to new_user_path
    else
        render :new
    end
  end
  def edit
    @user = User.find params[:id]
  end
  def update
    @user = User.find params[:id]
    @user = User.update(user_params)
    redirect_to '/'
  end
  
end
