require 'rails_helper'

RSpec.describe User, type: :model do
   
  let(:user) { User.new }

  describe "ActiveModel validations" do
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:password)}
    it {should validate_length_of(:password)}
  end

  describe "ActiveRecord associations" do
    it { should have_many(:images) }
  end

  describe "ActiveRecord associations" do
    it { should have_many(:subscriptions) }
  end

end