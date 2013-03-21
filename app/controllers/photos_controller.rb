class PhotosController < ApplicationController
  before_filter :authenticate_user!
  
  respond_to :html, :json 
  
  def index
    respond_with @photos = Photo.order("name").page(params[:page]).per(5)
  end
  
  def show
    respond_with @photo = current_user.photos.find_by_id( params[:id] )
  end
  
  def new
    respond_with @photo = current_user.photos.new( params[:photo] )
  end

  def edit
    respond_with @photo = current_user.photos.find_by_id( params[:id] )
  end


  def create
    @photo = current_user.photos.create(params[:photo])
    redirect_to photo_path(@photo)
  end

  def update
    respond_with @photo = current_user.photos.update( params[:id], params[:photo] )
    redirect_to edit_photo_path(@photo)
  end

  def destroy
    respond_withs @photo = current_user.photos.find_by_id(params[:id]).destroy 
    redirect_to photos_path
  end

end
