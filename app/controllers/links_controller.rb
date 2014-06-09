class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :enable_cross_origin_requests

  def index
  end

  def create
    @link = Link.new({
      title: params[:title],
      url: params[:url],
      })
    if @link.save
      render json: { message: "success" }
    else
      render json: { message: "error" }
    end
  end

  def create_remotely
    user = User.find_by(bookmark_token: params[:bookmark_token])

    @link = Link.create({
      url: params[:linkUrl],
      title: params[:linkTitle]
      })
    @note = user.notes.create({
      body: params[:linkNote]
      })
    @note.link = @link
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
    params.require(:link).permit(:url, :title, :user_id)
  end

end