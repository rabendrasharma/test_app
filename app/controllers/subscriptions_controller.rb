class SubscriptionsController < ApplicationController
	def subscribe
		current_user.subscriptions.create(subscribe_to: params[:user_id])
	end

	def unsubscribe
		Subscription.where(subscriber_id: current_user.id, subscribe_to: params[:user_id]).destroy_all
	end
end