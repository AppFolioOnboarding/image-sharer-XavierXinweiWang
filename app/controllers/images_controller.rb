class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(img_params)
    if @image.save
      redirect_to @image
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @images = Image.order(created_at: :desc)
  end

  def show
    @image = Image.find(params[:id])
  end

  private

  def img_params
    params.require(:image).permit(:title, :url)
  end
end
