class UsersController < ApplicationController

  def show
    @user = current_user
    @link = Link.new
    @note = Note.new
  end

  def update

  end


end


