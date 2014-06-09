class LibrariesController < ApplicationController

  def update
    library = Library.find(params[:libraryId])
    link = Link.find(params[:linkId])
    if library.links.include?(link)
      render json: { message: "This library already contains this link."}
    else
      library.links << link
      render json: { message: "Link has been successfully added!"}
    end

  end


  def show_public_libraries
    @libraries = Library.where("private" => false)
    @user = current_user
  end

end
