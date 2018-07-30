class HomeController < ApplicationController
  def index
  	@images = current_user.images.all
  end

  # def create
  # 	params[:image][:avatar].each do |image|
  # 	 	current_user.images.create(avatar: image)
  # 	end
  # 	redirect_to root_path
  # end

  private

  def image_params
  	params.require(:image).permit(:avatar)
  end
end
