class PagesController < ApplicationController

  def home
    @photos = User.find_by_email('renee@hilscher.ca').photos.order("name").page(params[:page]).per(5)
     if current_user.present?
       redirect_to :controller=>'pages', :action=>'slidewall'
    end
  end
  
  def slidewall 
    @photos = current_user.photos.order("name").page(params[:page]).per(5)
  end
end