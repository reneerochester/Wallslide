class PagesController < ApplicationController

  def home
    @photos = User.find_by_email('renee@hilscher.ca').photos.order("name").page(params[:page]).per(5)
  end
  
  def slidewall 
    @photos = current_user.photos.order("name").page(params[:page]).per(5)
  end
end