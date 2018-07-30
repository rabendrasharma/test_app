class Subscription < ApplicationRecord
	belongs_to :user, :class_name => "User", :foreign_key => "subscriber_id"
	
  validates :subscribe_to, presence: true

	def self.subscribed? current_user_id, user_id
		return true unless Subscription.where(subscriber_id: current_user_id, subscribe_to: user_id).blank?
	end
end
