require 'rails_helper'

RSpec.describe Image, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

	let(:image) { Image.new }
	
  describe "ActiveRecord associations" do
	  it { should belong_to(:user) }
  end
end
