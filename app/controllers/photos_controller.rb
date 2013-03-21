class PhotosController < ApplicationController
  before_filter :authenticate_user!
  def new
    @photo = current_user.photos.new
  end

  def create
    @photo = current_user.photos.create(params[:photo])
  end

  def update
    @photo = current_user.photos.update
  end

  def edit
    @photo = current_user.photos.edit
  end

  def destroy
    @photo current_user.photos.delete
  end

  def index
    @photo = current_user.photos.all
  end

  def show
    @photo = current_user.photos.find_by_id params[:id]
  end
end
