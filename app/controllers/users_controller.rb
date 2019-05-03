# frozen_string_literal: true

class UsersController < ApplicationController
  include UsersHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      flash[:success] = 'User successfully created'
      redirect_to new_user_path
    else
      flash.now[:error] = @user.errors.full_messages
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update user_params
      redirect_to edit_user_path, notice: 'User updated'
    else
      redirect_to edit_user_path, notice: @user.errors.full_messages
    end
  end
end
