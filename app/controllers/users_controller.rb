# frozen_string_literal: true

class UsersController < ApplicationController
  def new; end

  def create
    redirect_to '/'
  end
end
