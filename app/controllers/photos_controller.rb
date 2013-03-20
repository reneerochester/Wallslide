class PhotosController < ApplicationController
  before_filter :authenticate_user!
  def new
    @photo = current_user.Photo.new
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
    @photos = current_user.Photo.all
  end

  def show
  end
end
