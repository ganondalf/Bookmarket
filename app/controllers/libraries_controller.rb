class LibraryController < ApplicationController

  def show_public_libraries
    @libraries = Library.select("private, false")
  end

end
