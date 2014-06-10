class LibrariesController < ApplicationController

  def create
    library = Library.create(lib_params)
    user= User.find(params[:user_id])
    user.libraries << library
    redirect_to "/"
  end


  def update_link
    library = Library.find(params[:libraryId])
    link = Link.find(params[:linkId])
    if library.links.include?(link)
      render json: { message: "This library already contains this link."}
    else
      library.links << link
      num_links = library.links.size
      render json: { message: "Link has been successfully added!", size: num_links}
    end
  end

  def update_user
    if !current_user
      render json: { message: "Please log in or create an account."}
    else
      user = User.find(current_user.id)
      library = Library.find(params[:libraryId])
      user.libraries << library
      render json: { message: "This has been added to Your Libraries."}
    end
  end

  def show
    @user = User.find(current_user.id)
    @library = Library.find(params[:id])
  end

  def index_public_libraries
    @libraries = Library.where("private" => false)
    @user = current_user
  end

  def show_public_library
    @library = Library.find(params[:id])
  end

  private
  def lib_params
    params.require(:library).permit(:title, :description, :private)
  end

end
