class WelcomeController < ApplicationController
  def index
    @user = current_user
    @links = Link.all
    @libraries = Library.all
  end

  def show
    @user = current_user
  end
end
