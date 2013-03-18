class PagesController < ApplicationController

  def home
    @photos = Photo.order("name").page(params[:page]).per(5)
  end
end