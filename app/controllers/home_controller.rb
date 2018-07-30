class HomeController < ApplicationController
  def index
  	@images = current_user.images.all
  end
end
