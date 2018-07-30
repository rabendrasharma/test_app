require 'rails_helper'

RSpec.describe Subscription, type: :model do
	
  let(:subscription) { Subscription.new }
	
	describe "ActiveModel validations" do
    it {should validate_presence_of(:subscribe_to)}
  end

  describe "ActiveRecord associations" do
	  it { should belong_to(:user) }
  end

end