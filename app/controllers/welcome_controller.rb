class WelcomeController < ApplicationController
  def index
    @user = current_user
    @links = Link.all
    @libraries = Library.where("private" => false)
  end

  def show
    @user = current_user
  end
end
