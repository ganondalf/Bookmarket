class LinksController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :enable_cross_origin_requests

  def index
  end

  def create
    @link = Link.new(link_params)
    @note = Note.create(body: params[:note][:body])
    @link.picture = 'https://cdn2.iconfinder.com/data/icons/pittogrammi/142/95-512.png'
    @note.user = current_user
    if @link.save
      @link.notes << @note
      redirect_to '/'
    else
      render json: { message: "error" }
    end
  end

  def create_remotely
    user = User.find_by(bookmark_token: params[:bookmark_token])
    websource = Link.clean_source(params[:linkWebSource])
    title = Link.clean_title(params[:linkTitle])

    @link = Link.create({
      url: params[:linkUrl],
      picture: params[:picture],
      title: title,
      websource: websource,
      })
    @note = user.notes.create({
      body: params[:linkNote]
      })
    @link.notes << @note
    render json: { title: @link.title, url: @link.url, note: @note.body }
  end

  def userbookmark
    @token = params["id"]
    render 'bookmarklet.js.erb'
  end


  private

  def enable_cross_origin_requests
    response.headers["Access-Control-Allow-Origin"] = "*"
    response.headers["Access-Control-Request-Method"] = "POST"
  end

  def link_params
    params.require(:link).permit(:url, :title, {:note => [:body]})
  end

end
