class PhotosController < ApplicationController
  def new
    @photo = current_user.photo.new
  end

  def ceate
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @photos = current_user.photos
  end

  def show
  end
end
