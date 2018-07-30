class ImagesController < ApplicationController

	def new
		@image = Image.new
	end

	def create
		params[:image][:avatar].each do |image|
  	 	current_user.images.create(avatar: image)
  	end
  	redirect_to root_path
	end

	def common_images
		@images = Image.where.not(user_id: current_user.id).order("created_at desc")
	end

	def refresh_images
		@images = Image.where.not(user_id: current_user.id).order("created_at desc")
	end

	def subscribed_images
		@images = Image.where("user_id IN (?)",User.last.subscriptions.map(&:subscribe_to))
	end

end
