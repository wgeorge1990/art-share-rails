class PhotosController < ApplicationController
  before_action :authorize!, only: [:create]
  
  def index
    @photos = Photo.all
    render json: @photos
  end


  def create
    @photo = Photo.new(photo_params)
    @photo.img = url_for(@photo.image)
    if @photo.save
      render json: @photo
    else
      render json: { status: "error", code: 402, message: "Login please" }
    end
  end
  
  def update
    @photo = Photo.find(params[:id])
    @photo.update_attributes(photo_params)
    render json: @photo
  end

  private
  def photo_params
    params.permit(:title, :image, :img, :user_id, :likes, :description, :medium, :sold, :heigth, :width, :surface_material, :category )

  end

end
